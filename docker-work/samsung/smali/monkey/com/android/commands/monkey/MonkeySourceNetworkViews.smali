.class public Lcom/android/commands/monkey/MonkeySourceNetworkViews;
.super Ljava/lang/Object;
.source "MonkeySourceNetworkViews.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetChildren;,
        Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetParent;,
        Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetAccessibilityIds;,
        Lcom/android/commands/monkey/MonkeySourceNetworkViews$SetFocused;,
        Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetFocused;,
        Lcom/android/commands/monkey/MonkeySourceNetworkViews$SetSelected;,
        Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetSelected;,
        Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetEnabled;,
        Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetChecked;,
        Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetClass;,
        Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetText;,
        Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetLocation;,
        Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetViewsWithTextCommand;,
        Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetRootViewCommand;,
        Lcom/android/commands/monkey/MonkeySourceNetworkViews$QueryViewCommand;,
        Lcom/android/commands/monkey/MonkeySourceNetworkViews$ListViewsCommand;,
        Lcom/android/commands/monkey/MonkeySourceNetworkViews$ViewIntrospectionCommand;
    }
.end annotation


# static fields
.field private static final CLASS_NOT_FOUND:Ljava/lang/String; = "Error retrieving class information"

.field private static final COMMAND_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/commands/monkey/MonkeySourceNetworkViews$ViewIntrospectionCommand;",
            ">;"
        }
    .end annotation
.end field

.field private static final HANDLER_THREAD_NAME:Ljava/lang/String; = "UiAutomationHandlerThread"

.field private static final NO_ACCESSIBILITY_EVENT:Ljava/lang/String; = "No accessibility event has occured yet"

.field private static final NO_CONNECTION:Ljava/lang/String; = "Failed to connect to AccessibilityService, try restarting Monkey"

.field private static final NO_NODE:Ljava/lang/String; = "Node with given ID does not exist"

.field private static final REMOTE_ERROR:Ljava/lang/String; = "Unable to retrieve application info from PackageManager"

.field private static sClassMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final sHandlerThread:Landroid/os/HandlerThread;

.field private static sPm:Landroid/content/pm/IPackageManager;

.field protected static sUiTestAutomationBridge:Landroid/app/UiAutomation;


# direct methods
.method static bridge synthetic -$$Nest$sfgetCOMMAND_MAP()Ljava/util/Map;
    .registers 1

    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->COMMAND_MAP:Ljava/util/Map;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetsPm()Landroid/content/pm/IPackageManager;
    .registers 1

    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->sPm:Landroid/content/pm/IPackageManager;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smgetIdClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->getIdClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smgetNodeByAccessibilityIds(Ljava/lang/String;Ljava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->getNodeByAccessibilityIds(Ljava/lang/String;Ljava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smgetNodeByViewId(Ljava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 1

    invoke-static {p0}, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->getNodeByViewId(Ljava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 54
    nop

    .line 55
    const-string v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    sput-object v0, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->sPm:Landroid/content/pm/IPackageManager;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->sClassMap:Ljava/util/Map;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->COMMAND_MAP:Ljava/util/Map;

    .line 81
    new-instance v1, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetLocation;

    invoke-direct {v1}, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetLocation;-><init>()V

    const-string v2, "getlocation"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    new-instance v1, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetText;

    invoke-direct {v1}, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetText;-><init>()V

    const-string v2, "gettext"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    new-instance v1, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetClass;

    invoke-direct {v1}, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetClass;-><init>()V

    const-string v2, "getclass"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    new-instance v1, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetChecked;

    invoke-direct {v1}, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetChecked;-><init>()V

    const-string v2, "getchecked"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    new-instance v1, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetEnabled;

    invoke-direct {v1}, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetEnabled;-><init>()V

    const-string v2, "getenabled"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    new-instance v1, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetSelected;

    invoke-direct {v1}, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetSelected;-><init>()V

    const-string v2, "getselected"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    new-instance v1, Lcom/android/commands/monkey/MonkeySourceNetworkViews$SetSelected;

    invoke-direct {v1}, Lcom/android/commands/monkey/MonkeySourceNetworkViews$SetSelected;-><init>()V

    const-string v2, "setselected"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    new-instance v1, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetFocused;

    invoke-direct {v1}, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetFocused;-><init>()V

    const-string v2, "getfocused"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    new-instance v1, Lcom/android/commands/monkey/MonkeySourceNetworkViews$SetFocused;

    invoke-direct {v1}, Lcom/android/commands/monkey/MonkeySourceNetworkViews$SetFocused;-><init>()V

    const-string v2, "setfocused"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    new-instance v1, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetParent;

    invoke-direct {v1}, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetParent;-><init>()V

    const-string v2, "getparent"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    new-instance v1, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetChildren;

    invoke-direct {v1}, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetChildren;-><init>()V

    const-string v2, "getchildren"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    new-instance v1, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetAccessibilityIds;

    invoke-direct {v1}, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetAccessibilityIds;-><init>()V

    const-string v2, "getaccessibilityids"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "UiAutomationHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->sHandlerThread:Landroid/os/HandlerThread;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getIdClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    .registers 7
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "sourceDir"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 126
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->sClassMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 127
    .local v0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_32

    .line 128
    new-instance v1, Ldalvik/system/DexClassLoader;

    const/4 v2, 0x0

    .line 130
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const-string v4, "/data/local/tmp"

    invoke-direct {v1, p1, v4, v2, v3}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 131
    .local v1, "classLoader":Ldalvik/system/DexClassLoader;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".R$id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 132
    sget-object v2, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->sClassMap:Ljava/util/Map;

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .end local v1    # "classLoader":Ldalvik/system/DexClassLoader;
    :cond_32
    return-object v0
.end method

.method private static getNodeByAccessibilityIds(Ljava/lang/String;Ljava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 14
    .param p0, "windowString"    # Ljava/lang/String;
    .param p1, "viewString"    # Ljava/lang/String;

    .line 139
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 140
    .local v8, "windowId":I
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 141
    .local v9, "viewId":I
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->sUiTestAutomationBridge:Landroid/app/UiAutomation;

    invoke-virtual {v0}, Landroid/app/UiAutomation;->getConnectionId()I

    move-result v10

    .line 142
    .local v10, "connectionId":I
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v11

    .line 143
    .local v11, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    int-to-long v3, v9

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v11

    move v1, v10

    move v2, v8

    invoke-virtual/range {v0 .. v7}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfoByAccessibilityId(IIJZILandroid/os/Bundle;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method private static getNodeByViewId(Ljava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 9
    .param p0, "viewId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/commands/monkey/MonkeyViewException;
        }
    .end annotation

    .line 148
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->sUiTestAutomationBridge:Landroid/app/UiAutomation;

    invoke-virtual {v0}, Landroid/app/UiAutomation;->getConnectionId()I

    move-result v0

    .line 149
    .local v0, "connectionId":I
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v7

    .line 150
    .local v7, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    sget-wide v4, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    const v3, 0x7fffffff

    move-object v1, v7

    move v2, v0

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfosByViewId(IIJLjava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 153
    .local v1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_24

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    goto :goto_25

    :cond_24
    const/4 v2, 0x0

    :goto_25
    return-object v2
.end method

.method public static setup()V
    .registers 3

    .line 103
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->sHandlerThread:Landroid/os/HandlerThread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setDaemon(Z)V

    .line 104
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 105
    new-instance v1, Landroid/app/UiAutomation;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v2, Landroid/app/UiAutomationConnection;

    invoke-direct {v2}, Landroid/app/UiAutomationConnection;-><init>()V

    invoke-direct {v1, v0, v2}, Landroid/app/UiAutomation;-><init>(Landroid/os/Looper;Landroid/app/IUiAutomationConnection;)V

    sput-object v1, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->sUiTestAutomationBridge:Landroid/app/UiAutomation;

    .line 107
    invoke-virtual {v1}, Landroid/app/UiAutomation;->connect()V

    .line 108
    return-void
.end method

.method public static teardown()V
    .registers 1

    .line 111
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 112
    return-void
.end method
