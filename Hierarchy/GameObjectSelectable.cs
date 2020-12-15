using UnityEditor;
using UnityEngine;

public static class GameObjectSelectable {
    private const int WIDTH = 16;

    [InitializeOnLoadMethod]
    private static void Init() {
        EditorApplication.hierarchyWindowItemOnGUI += OnGUI;
    }

    private static void OnGUI(int instanceID, Rect selectionRect) {
        var pos = selectionRect;
        pos.x = pos.xMax - WIDTH;
        pos.width = WIDTH;

        var oldSelected = Selection.Contains(instanceID);
        var newSelected = GUI.Toggle(pos, oldSelected, string.Empty);

        if (newSelected == oldSelected) {
            return;
        }

        var instanceIDs = Selection.instanceIDs;

        if (newSelected) {
            ArrayUtility.Add(ref instanceIDs, instanceID);
        } else {
            ArrayUtility.Remove(ref instanceIDs, instanceID);
        }

        Selection.instanceIDs = instanceIDs;
    }
}