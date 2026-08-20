.class public Lcom/android/server/accessibility/autoaction/actiontype/NavigationBarAction;
.super Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;
.source "NavigationBarAction.java"


# static fields
.field public static final ACCESSIBILITY_BUTTON:Ljava/lang/String; = "accessibility_button"

.field public static final BACK:Ljava/lang/String; = "back"

.field public static final HOME:Ljava/lang/String; = "home"

.field public static final INTENT_ACTION_ACCESSIBILITY_BUTTON:Ljava/lang/String; = "SYSTEM_ACTION_ACCESSIBILITY_BUTTON"

.field public static final INTENT_ACTION_HOME:Ljava/lang/String; = "SYSTEM_ACTION_HOME"

.field public static final INTENT_ACTION_RECENTS:Ljava/lang/String; = "SYSTEM_ACTION_RECENTS"

.field public static final RECENTS:Ljava/lang/String; = "recents"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mType:Ljava/lang/String;

.field public mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 4

    .line 49
    invoke-direct {p0}, Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/NavigationBarAction;->mContext:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcom/android/server/accessibility/autoaction/actiontype/NavigationBarAction;->mType:Ljava/lang/String;

    .line 52
    iput p3, p0, Lcom/android/server/accessibility/autoaction/actiontype/NavigationBarAction;->mUserId:I

    return-void
.end method

.method public static createAction(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/server/accessibility/autoaction/actiontype/NavigationBarAction;
    .registers 4

    .line 56
    new-instance v0, Lcom/android/server/accessibility/autoaction/actiontype/NavigationBarAction;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/accessibility/autoaction/actiontype/NavigationBarAction;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-object v0
.end method

.method public static getStringResId(Ljava/lang/String;)I
    .registers 3

    .line 60
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_54

    goto :goto_39

    :sswitch_c
    const-string/jumbo v0, "recents"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_16

    goto :goto_39

    :cond_16
    const/4 v1, 0x3

    goto :goto_39

    :sswitch_18
    const-string/jumbo v0, "home"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_22

    goto :goto_39

    :cond_22
    const/4 v1, 0x2

    goto :goto_39

    :sswitch_24
    const-string v0, "back"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2d

    goto :goto_39

    :cond_2d
    const/4 v1, 0x1

    goto :goto_39

    :sswitch_2f
    const-string v0, "accessibility_button"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_38

    goto :goto_39

    :cond_38
    const/4 v1, 0x0

    :goto_39
    packed-switch v1, :pswitch_data_66

    .line 70
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong NavigationBar Action Type"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_44
    const p0, 0x104011c

    return p0

    :pswitch_48
    const p0, 0x1040114

    return p0

    :pswitch_4c
    const p0, 0x104010f

    return p0

    :pswitch_50
    const p0, 0x104010e

    return p0

    :sswitch_data_54
    .sparse-switch
        -0x74e910bd -> :sswitch_2f
        0x2e04e7 -> :sswitch_24
        0x30f4df -> :sswitch_18
        0x40828578 -> :sswitch_c
    .end sparse-switch

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_50
        :pswitch_4c
        :pswitch_48
        :pswitch_44
    .end packed-switch
.end method


# virtual methods
.method public performCornerAction(I)V
    .registers 7

    .line 77
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/actiontype/NavigationBarAction;->mType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v1, :sswitch_data_a4

    goto :goto_3d

    :sswitch_10
    const-string/jumbo v1, "recents"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_3d

    :cond_1a
    const/4 v4, 0x3

    goto :goto_3d

    :sswitch_1c
    const-string/jumbo v1, "home"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    goto :goto_3d

    :cond_26
    const/4 v4, 0x2

    goto :goto_3d

    :sswitch_28
    const-string v1, "back"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    goto :goto_3d

    :cond_31
    move v4, v2

    goto :goto_3d

    :sswitch_33
    const-string v1, "accessibility_button"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    goto :goto_3d

    :cond_3c
    move v4, v3

    :goto_3d
    packed-switch v4, :pswitch_data_b6

    .line 121
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Wrong NavigationBar Action Type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 83
    :pswitch_48
    const-class v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-eqz v0, :cond_a2

    .line 85
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/actiontype/NavigationBarAction;->mContext:Landroid/content/Context;

    .line 86
    invoke-static {p0, p1}, Landroid/app/StatusBarManager;->getNaturalBarTypeByDisplayId(Landroid/content/Context;I)I

    move-result p0

    .line 85
    invoke-interface {v0, p0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->toggleRecentAppsToType(I)V

    goto :goto_a2

    .line 79
    :pswitch_5c
    new-instance p1, Landroid/content/Intent;

    const-string v0, "SYSTEM_ACTION_HOME"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 80
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/actiontype/NavigationBarAction;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_a2

    .line 90
    :pswitch_69
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/android/server/accessibility/autoaction/actiontype/NavigationBarAction$1;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/autoaction/actiontype/NavigationBarAction$1;-><init>(Lcom/android/server/accessibility/autoaction/actiontype/NavigationBarAction;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 104
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_a2

    .line 109
    :pswitch_77
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/actiontype/NavigationBarAction;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/accessibility/autoaction/actiontype/NavigationBarAction;->mUserId:I

    const-string v4, "accessibility_button_mode"

    invoke-static {v0, v4, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eq v0, v2, :cond_91

    .line 113
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/actiontype/NavigationBarAction;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityManager;->notifyAccessibilityButtonClicked(I)V

    goto :goto_a2

    .line 115
    :cond_91
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.android.systemui.accessibility.floatingmenu.SHOW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.android.systemui"

    .line 116
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/actiontype/NavigationBarAction;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_a2
    :goto_a2
    return-void

    nop

    :sswitch_data_a4
    .sparse-switch
        -0x74e910bd -> :sswitch_33
        0x2e04e7 -> :sswitch_28
        0x30f4df -> :sswitch_1c
        0x40828578 -> :sswitch_10
    .end sparse-switch

    :pswitch_data_b6
    .packed-switch 0x0
        :pswitch_77
        :pswitch_69
        :pswitch_5c
        :pswitch_48
    .end packed-switch
.end method
