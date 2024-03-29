//
//  AlertView.swift
//  DawaaiSwiftUi
//
//  Created by user3 on 22/02/24.
//

import SwiftUI




struct CustomAlertView: View {
    var title : String? = "DOLO 650"
     var message  : String? = "🚨DAWAAI TIME🚨"
     var primaryButtonLabel  : String? = "DONE"
    var primaryButtonAction : Any? = {}
     var secondaryButtonLabel  : String? = "SNOOZE"
    var secondaryButtonAction : Any? = {}
    var image : Image? = Image("dolo650")
    
    @Binding public var showing : Bool
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

  var body: some View {
    VStack {
      if let image = image {
        image
          .resizable()
          .scaledToFit()
          .frame(width: 200, height: 200)
      } else if let title = title {
        Text(title)
          .font(.headline)
          .multilineTextAlignment(.center)
          .padding(.bottom)
      }

      if let message = message {
        Text(message)
          .font(.title3)
          .multilineTextAlignment(.center)
          .padding()
      }

    
      if let title = title {
        Text(title)
          .font(.title).bold()
          .multilineTextAlignment(.center)
      }

      HStack(spacing: 16) {
        Button(action: {
            self.primaryButtonAction
            self.presentationMode.wrappedValue.dismiss()
        }, label: {
            Text(primaryButtonLabel ?? "")
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.blue)
            .cornerRadius(12)
        })
        if let secondaryButtonLabel = secondaryButtonLabel {
          Button(action: {
              self.secondaryButtonAction
              self.presentationMode.wrappedValue.dismiss()
          }, label: {
            Text(secondaryButtonLabel)
              .font(.headline)
              .foregroundColor(.blue)
              .padding()
              .frame(maxWidth: .infinity)
              .background(Color.white)
              .cornerRadius(12)
              .overlay(
                RoundedRectangle(cornerRadius: 12)
                  .stroke(Color.blue, lineWidth: 2)
              )
          })
        }
      }
    }
    .padding()
    .background(Color("bgColor"))
    .cornerRadius(10)
    .shadow(radius: 20)
  }
}

//struct CustomAlertView_Previews: PreviewProvider {
//  static var previews: some View {
//    Group {
//       
//      CustomAlertView(
//        title: "DOLO 650",
//        message: "🚨DAWAAI TIME🚨",
//        primaryButtonLabel: "DONE",
//        primaryButtonAction: {},
//        secondaryButtonLabel: "SNOOZE",
//        secondaryButtonAction: nil,
//        image: Image("dolo650")
//      )
//      .previewLayout(.sizeThatFits)
//      .padding()
//       
//    }
//  }
//}
