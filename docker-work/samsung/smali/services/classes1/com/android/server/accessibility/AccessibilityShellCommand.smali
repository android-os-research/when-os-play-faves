.class public final Lcom/android/server/accessibility/AccessibilityShellCommand;
.super Landroid/os/ShellCommand;
.source "AccessibilityShellCommand.java"


# instance fields
.field public final mService:Lcom/android/server/accessibility/AccessibilityManagerService;

.field public final mSystemActionPerformer:Lcom/android/server/accessibility/SystemActionPerformer;

.field public final mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/SystemActionPerformer;)V
    .registers 3

    .line 54
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityShellCommand;->mService:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 56
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityShellCommand;->mSystemActionPerformer:Lcom/android/server/accessibility/SystemActionPerformer;

    .line 57
    const-class p1, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/WindowManagerInternal;

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityShellCommand;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    return-void
.end method


# virtual methods
.method public final acceptCustomAccessibilityCommand()Z
    .registers 4

    .line 162
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_19

    const/16 v2, 0x7d0

    if-eq v0, v2, :cond_19

    .line 166
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error : Wrong process"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    .line 171
    :cond_19
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityShellCommand;->isDebuggableBinary()Z

    move-result v0

    if-eqz v0, :cond_21

    const/4 p0, 0x1

    return p0

    .line 175
    :cond_21
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error : Wrong binary"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1
.end method

.method public final isDebuggableBinary()Z
    .registers 2

    .line 180
    sget-object p0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v0, "eng"

    .line 181
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string/jumbo v0, "userdebug"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14

    goto :goto_16

    :cond_14
    const/4 p0, 0x0

    goto :goto_17

    :cond_16
    :goto_16
    const/4 p0, 0x1

    :goto_17
    return p0
.end method

.method public onCommand(Ljava/lang/String;)I
    .registers 5

    if-nez p1, :cond_7

    .line 63
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 65
    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_ea

    :goto_10
    move v0, v2

    goto/16 :goto_aa

    :sswitch_13
    const-string/jumbo v0, "stop-trace"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_10

    :cond_1d
    const/16 v0, 0xb

    goto/16 :goto_aa

    :sswitch_21
    const-string v0, "call-system-action"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    goto :goto_10

    :cond_2a
    const/16 v0, 0xa

    goto/16 :goto_aa

    :sswitch_2e
    const-string/jumbo v0, "toggle-accessibility-sec-debug-log"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    goto :goto_10

    :cond_38
    const/16 v0, 0x9

    goto/16 :goto_aa

    :sswitch_3c
    const-string/jumbo v0, "start-trace"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    goto :goto_10

    :cond_46
    const/16 v0, 0x8

    goto/16 :goto_aa

    :sswitch_4a
    const-string/jumbo v0, "set-bind-instant-service-allowed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_54

    goto :goto_10

    :cond_54
    const/4 v0, 0x7

    goto :goto_aa

    :sswitch_56
    const-string/jumbo v0, "send-touchevent-to-accessibilityinputfilter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_60

    goto :goto_10

    :cond_60
    const/4 v0, 0x6

    goto :goto_aa

    :sswitch_62
    const-string/jumbo v0, "help"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6c

    goto :goto_10

    :cond_6c
    const/4 v0, 0x5

    goto :goto_aa

    :sswitch_6e
    const-string v0, "get-bind-instant-service-allowed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_77

    goto :goto_10

    :cond_77
    const/4 v0, 0x4

    goto :goto_aa

    :sswitch_79
    const-string/jumbo v0, "notify-gesture-to-accessibilityservice"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_83

    goto :goto_10

    :cond_83
    const/4 v0, 0x3

    goto :goto_aa

    :sswitch_85
    const-string/jumbo v0, "toggle-accessibilityservice"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8f

    goto :goto_10

    :cond_8f
    const/4 v0, 0x2

    goto :goto_aa

    :sswitch_91
    const-string/jumbo v0, "notify-key-to-accessibilityservice"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9c

    goto/16 :goto_10

    :cond_9c
    const/4 v0, 0x1

    goto :goto_aa

    :sswitch_9e
    const-string/jumbo v0, "notify-accessibilityevent-to-accessibilityservice"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a9

    goto/16 :goto_10

    :cond_a9
    move v0, v1

    :goto_aa
    packed-switch v0, :pswitch_data_11c

    return v2

    .line 73
    :pswitch_ae
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityShellCommand;->runCallSystemAction()I

    move-result p0

    return p0

    .line 92
    :pswitch_b3
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityShellCommand;->runToggleSecDebugLog()I

    move-result p0

    return p0

    .line 77
    :pswitch_b8
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityShellCommand;->mService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getTraceManager()Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/android/server/accessibility/AccessibilityTraceManager;->onShellCommand(Ljava/lang/String;Landroid/os/ShellCommand;)I

    move-result p0

    return p0

    .line 70
    :pswitch_c3
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityShellCommand;->runSetBindInstantServiceAllowed()I

    move-result p0

    return p0

    .line 95
    :pswitch_c8
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityShellCommand;->runSendMotionEventToInputFilter()I

    move-result p0

    return p0

    .line 98
    :pswitch_cd
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityShellCommand;->onHelp()V

    return v1

    .line 67
    :pswitch_d1
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityShellCommand;->runGetBindInstantServiceAllowed()I

    move-result p0

    return p0

    .line 80
    :pswitch_d6
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityShellCommand;->runNotifyGestureEvent()I

    move-result p0

    return p0

    .line 89
    :pswitch_db
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityShellCommand;->runToggleAccessibilityService()I

    move-result p0

    return p0

    .line 83
    :pswitch_e0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityShellCommand;->runNotifyKeyEvent()I

    move-result p0

    return p0

    .line 86
    :pswitch_e5
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityShellCommand;->runNotifyAccessibilityEvent()I

    move-result p0

    return p0

    :sswitch_data_ea
    .sparse-switch
        -0x72fb5204 -> :sswitch_9e
        -0x700f1039 -> :sswitch_91
        -0x5d5ee580 -> :sswitch_85
        -0x58280d4f -> :sswitch_79
        -0x333457d5 -> :sswitch_6e
        0x30cf41 -> :sswitch_62
        0x4d20699 -> :sswitch_56
        0x2f0ea69f -> :sswitch_4a
        0x4fec781a -> :sswitch_3c
        0x5d83cd16 -> :sswitch_2e
        0x683ce265 -> :sswitch_21
        0x6ebe83ba -> :sswitch_13
    .end sparse-switch

    :pswitch_data_11c
    .packed-switch 0x0
        :pswitch_e5
        :pswitch_e0
        :pswitch_db
        :pswitch_d6
        :pswitch_d1
        :pswitch_cd
        :pswitch_c8
        :pswitch_c3
        :pswitch_b8
        :pswitch_b3
        :pswitch_ae
        :pswitch_b8
    .end packed-switch
.end method

.method public onHelp()V
    .registers 3

    .line 385
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Accessibility service (accessibility) commands:"

    .line 386
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  help"

    .line 387
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Print this help text."

    .line 388
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  set-bind-instant-service-allowed [--user <USER_ID>] true|false "

    .line 389
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Set whether binding to services provided by instant apps is allowed."

    .line 390
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  get-bind-instant-service-allowed [--user <USER_ID>]"

    .line 391
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Get whether binding to services provided by instant apps is allowed."

    .line 392
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  call-system-action <ACTION_ID>"

    .line 393
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Calls the system action with the given action id."

    .line 394
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 395
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityShellCommand;->mService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getTraceManager()Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/accessibility/AccessibilityTraceManager;->onHelp(Ljava/io/PrintWriter;)V

    .line 397
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityShellCommand;->isDebuggableBinary()Z

    move-result p0

    if-eqz p0, :cond_86

    const-string p0, "  notify-gesture-to-accessibilityservice <GESTURE_ID>"

    .line 398
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    Notifys the gesture event with the given gesture id."

    .line 399
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  notify-key-to-accessibilityservice <KEY_CODE> <(optional) ACTION>"

    .line 400
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    Notifys the key event with the given key code."

    .line 401
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    If the ACTION is empty, down and up key event will be notified"

    .line 402
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  notify-accessibilityevent-to-accessibilityservice <EVENT_TYPE> <(optional) PACKAGE_NAME>"

    .line 403
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    Notifys the accessibility event with given event type"

    .line 405
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  toggle-accessibilityservice <PACKAGE_NAME> <CLASS_NAME>"

    .line 406
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    Toggles the given AccessibilityService"

    .line 407
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    for example, talkback"

    .line 408
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "      PACKAGE NAME : com.google.android.marvin.talkback"

    .line 409
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "      CLASS_NAME : com.google.android.marvin.talkback.TalkBackService"

    .line 410
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  toggle-accessibility-sec-debug-log"

    .line 411
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    Toggles sec debug log of Accessibility framework"

    .line 412
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_86
    return-void
.end method

.method public final parseUserId()Ljava/lang/Integer;
    .registers 4

    .line 148
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_35

    const-string v1, "--user"

    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 151
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 153
    :cond_1b
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown option: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 157
    :cond_35
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public final runCallSystemAction()I
    .registers 4

    .line 132
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_10

    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_10

    const/16 v2, 0x7d0

    if-eq v0, v2, :cond_10

    return v1

    .line 138
    :cond_10
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 140
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 141
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityShellCommand;->mSystemActionPerformer:Lcom/android/server/accessibility/SystemActionPerformer;

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/SystemActionPerformer;->performSystemAction(I)Z

    const/4 p0, 0x0

    return p0

    :cond_21
    return v1
.end method

.method public final runGetBindInstantServiceAllowed()I
    .registers 3

    .line 107
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityShellCommand;->parseUserId()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 p0, -0x1

    return p0

    .line 111
    :cond_8
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityShellCommand;->mService:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 112
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getBindInstantServiceAllowed(I)Z

    move-result p0

    .line 111
    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final runNotifyAccessibilityEvent()I
    .registers 4

    .line 231
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityShellCommand;->acceptCustomAccessibilityCommand()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_30

    .line 232
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_17

    .line 234
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error : need event type"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    .line 237
    :cond_17
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 238
    new-instance v2, Landroid/view/accessibility/AccessibilityEvent;

    .line 239
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {v2, v0}, Landroid/view/accessibility/AccessibilityEvent;-><init>(I)V

    if-eqz v1, :cond_29

    .line 241
    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 243
    :cond_29
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityShellCommand;->mService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {p0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendAccessibilityEventForCurrentUserLocked(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 p0, 0x0

    return p0

    :cond_30
    return v1
.end method

.method public final runNotifyGestureEvent()I
    .registers 5

    .line 185
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityShellCommand;->acceptCustomAccessibilityCommand()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_33

    .line 186
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_17

    .line 188
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error : need gesture id"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    .line 191
    :cond_17
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 194
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_27

    .line 196
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_28

    :cond_27
    move v1, v2

    .line 199
    :goto_28
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityShellCommand;->mService:Lcom/android/server/accessibility/AccessibilityManagerService;

    new-instance v3, Landroid/accessibilityservice/AccessibilityGestureEvent;

    invoke-direct {v3, v0, v1}, Landroid/accessibilityservice/AccessibilityGestureEvent;-><init>(II)V

    invoke-virtual {p0, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->onGesture(Landroid/accessibilityservice/AccessibilityGestureEvent;)Z

    return v2

    :cond_33
    return v1
.end method

.method public final runNotifyKeyEvent()I
    .registers 15

    .line 206
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityShellCommand;->acceptCustomAccessibilityCommand()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_5f

    .line 207
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_17

    .line 209
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error : need key code"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    .line 212
    :cond_17
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 213
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v10, 0x0

    if-nez v1, :cond_48

    .line 215
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 216
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityShellCommand;->mService:Lcom/android/server/accessibility/AccessibilityManagerService;

    new-instance v13, Landroid/view/KeyEvent;

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v2, v13

    move-wide v3, v11

    move-wide v5, v11

    move v8, v0

    invoke-direct/range {v2 .. v9}, Landroid/view/KeyEvent;-><init>(JJIII)V

    invoke-virtual {v1, v13, v10}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyKeyEvent(Landroid/view/KeyEvent;I)Z

    .line 218
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityShellCommand;->mService:Lcom/android/server/accessibility/AccessibilityManagerService;

    new-instance v1, Landroid/view/KeyEvent;

    const-wide/16 v2, 0xa

    add-long v5, v11, v2

    const/4 v7, 0x1

    move-object v2, v1

    move-wide v3, v11

    invoke-direct/range {v2 .. v9}, Landroid/view/KeyEvent;-><init>(JJIII)V

    invoke-virtual {p0, v1, v10}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyKeyEvent(Landroid/view/KeyEvent;I)Z

    goto :goto_5e

    .line 221
    :cond_48
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 222
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 223
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityShellCommand;->mService:Lcom/android/server/accessibility/AccessibilityManagerService;

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v9, 0x0

    move-object v2, v1

    move-wide v3, v5

    move v8, v0

    invoke-direct/range {v2 .. v9}, Landroid/view/KeyEvent;-><init>(JJIII)V

    invoke-virtual {p0, v1, v10}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyKeyEvent(Landroid/view/KeyEvent;I)Z

    :goto_5e
    return v10

    :cond_5f
    return v1
.end method

.method public final runSendMotionEventToInputFilter()I
    .registers 26

    move-object/from16 v0, p0

    .line 320
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AccessibilityShellCommand;->acceptCustomAccessibilityCommand()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_d7

    .line 321
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_19

    .line 323
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Error : need x value for MotionEvent"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    .line 326
    :cond_19
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_29

    .line 328
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Error : need y value for MotionEvent"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    .line 331
    :cond_29
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 332
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 334
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v15, v4, [Landroid/view/MotionEvent$PointerProperties;

    .line 337
    new-instance v5, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v5}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    const/4 v14, 0x0

    .line 338
    iput v14, v5, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 339
    iput v4, v5, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    new-array v4, v4, [Landroid/view/MotionEvent$PointerCoords;

    .line 342
    new-instance v6, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v6}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 343
    iput v1, v6, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 344
    iput v2, v6, Landroid/view/MotionEvent$PointerCoords;->y:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 345
    iput v1, v6, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 346
    iput v1, v6, Landroid/view/MotionEvent$PointerCoords;->size:F

    aput-object v6, v4, v14

    aput-object v5, v15, v14

    const/high16 v1, 0x40000000    # 2.0f

    if-nez v3, :cond_ae

    .line 352
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    const/16 v19, 0x5

    const/16 v20, 0x0

    const/16 v21, 0x1002

    const/16 v22, 0x0

    move-wide v5, v2

    move-wide v7, v2

    move-object v11, v15

    move-object v12, v4

    move/from16 v23, v14

    move/from16 v14, v16

    move-object/from16 v24, v15

    move/from16 v15, v17

    move/from16 v16, v18

    move/from16 v17, v19

    move/from16 v18, v20

    move/from16 v19, v21

    move/from16 v20, v22

    .line 353
    invoke-static/range {v5 .. v20}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v5

    .line 357
    iget-object v6, v0, Lcom/android/server/accessibility/AccessibilityShellCommand;->mService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v6, v5, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->injectInputEventToInputFilter(Landroid/view/InputEvent;I)V

    .line 359
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    const/4 v9, 0x1

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v17, 0x5

    const/16 v18, 0x0

    const/16 v19, 0x1002

    const/16 v20, 0x0

    move-wide v5, v2

    move-object/from16 v11, v24

    invoke-static/range {v5 .. v20}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v2

    .line 363
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityShellCommand;->mService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0, v2, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->injectInputEventToInputFilter(Landroid/view/InputEvent;I)V

    goto :goto_d6

    :cond_ae
    move/from16 v23, v14

    move-object/from16 v24, v15

    .line 366
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 367
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    const/4 v10, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v17, 0x5

    const/16 v18, 0x0

    const/16 v19, 0x1002

    const/16 v20, 0x0

    move-wide v5, v7

    move-object/from16 v11, v24

    move-object v12, v4

    .line 368
    invoke-static/range {v5 .. v20}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v2

    .line 372
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityShellCommand;->mService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0, v2, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->injectInputEventToInputFilter(Landroid/view/InputEvent;I)V

    :goto_d6
    return v23

    :cond_d7
    return v2
.end method

.method public final runSetBindInstantServiceAllowed()I
    .registers 4

    .line 117
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityShellCommand;->parseUserId()Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_8

    return v1

    .line 121
    :cond_8
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_18

    .line 123
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: no true/false specified"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    .line 126
    :cond_18
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityShellCommand;->mService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 127
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 126
    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->setBindInstantServiceAllowed(IZ)V

    const/4 p0, 0x0

    return p0
.end method

.method public final runToggleAccessibilityService()I
    .registers 5

    .line 250
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityShellCommand;->acceptCustomAccessibilityCommand()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_37

    .line 251
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 252
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    if-nez v0, :cond_1b

    .line 254
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error : need package name"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :cond_1b
    if-nez v2, :cond_27

    .line 258
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error : need class name"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    .line 261
    :cond_27
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityShellCommand;->mService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v0, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v3}, Lcom/android/server/accessibility/AccessibilityShellCommand;->setAccessibilityServiceState(Landroid/content/Context;Landroid/content/ComponentName;)V

    const/4 p0, 0x0

    return p0

    :cond_37
    return v1
.end method

.method public final runToggleSecDebugLog()I
    .registers 3

    .line 311
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityShellCommand;->acceptCustomAccessibilityCommand()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 312
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityShellCommand;->mService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->isSecDebugEnabled()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->setSecDebug(Z)V

    .line 313
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityShellCommand;->mService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->isSecDebugEnabled()Z

    move-result p0

    if-eqz p0, :cond_20

    const-string p0, "enabled"

    goto :goto_22

    :cond_20
    const-string p0, "disabled"

    :goto_22
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_27
    const/4 p0, -0x1

    return p0
.end method

.method public final setAccessibilityServiceState(Landroid/content/Context;Landroid/content/ComponentName;)V
    .registers 9

    .line 270
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    .line 272
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enabled_accessibility_services"

    .line 271
    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 273
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, ":"

    if-nez v2, :cond_2d

    .line 274
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 276
    array-length v2, v0

    const/4 v4, 0x0

    :goto_1d
    if-ge v4, v2, :cond_2d

    aget-object v5, v0, v4

    .line 277
    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_2a

    .line 280
    invoke-virtual {p0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_2a
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 285
    :cond_2d
    invoke-virtual {p0, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 286
    invoke-virtual {p0, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_3a

    .line 288
    :cond_37
    invoke-virtual {p0, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 292
    :goto_3a
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 297
    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_43
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 298
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_43

    .line 301
    :cond_5a
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_65

    add-int/lit8 p0, p0, -0x1

    .line 303
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 305
    :cond_65
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 307
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 305
    invoke-static {p0, v1, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
