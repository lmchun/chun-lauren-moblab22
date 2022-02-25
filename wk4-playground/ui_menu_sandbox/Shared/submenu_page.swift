import SwiftUI

struct submenu_page: View {
    var body: some View {
        Text("Hello World!")
            .toolbar {
                ToolbarItem(placement: .primaryAction) {
                    Menu {
                        Section {
                            Button(action: {}) {
                                Label("Create a file", systemImage: "doc")
                            }

                            Button(action: {}) {
                                Label("Create a folder", systemImage: "folder")
                            }
                        }

                        Section(header: Text("Secondary actions")) {
                            Button(action: {}) {
                                Label("Remove old files", systemImage: "trash")
                                    .foregroundColor(.red)
                            }
                        }
                    }
                    label: {
                        Label("Add", systemImage: "plus")
                    }
                }
            }
    }
}
struct submenu_page_Previews: PreviewProvider {
    static var previews: some View {
        submenu_page()
    }
}
