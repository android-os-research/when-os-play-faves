.class public Lcom/android/server/UiModeManagerService$Shell;
.super Landroid/os/ShellCommand;
.source "UiModeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/UiModeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Shell"
.end annotation


# static fields
.field public static final NIGHT_MODE_STR_AUTO:Ljava/lang/String; = "auto"

.field public static final NIGHT_MODE_STR_CUSTOM_BEDTIME:Ljava/lang/String; = "custom_bedtime"

.field public static final NIGHT_MODE_STR_CUSTOM_SCHEDULE:Ljava/lang/String; = "custom_schedule"

.field public static final NIGHT_MODE_STR_NO:Ljava/lang/String; = "no"

.field public static final NIGHT_MODE_STR_UNKNOWN:Ljava/lang/String; = "unknown"

.field public static final NIGHT_MODE_STR_YES:Ljava/lang/String; = "yes"


# instance fields
.field public final mInterface:Landroid/app/IUiModeManager;


# direct methods
.method public static bridge synthetic -$$Nest$smnightModeToStr(II)Ljava/lang/String;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/UiModeManagerService$Shell;->nightModeToStr(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/app/IUiModeManager;)V
    .registers 2

    .line 2231
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 2232
    iput-object p1, p0, Lcom/android/server/UiModeManagerService$Shell;->mInterface:Landroid/app/IUiModeManager;

    return-void
.end method

.method public static nightModeToStr(II)Ljava/lang/String;
    .registers 4

    if-eqz p0, :cond_22

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1e

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1a

    const/4 v1, 0x3

    if-eq p0, v1, :cond_c

    goto :goto_16

    :cond_c
    if-nez p1, :cond_11

    const-string p0, "custom_schedule"

    return-object p0

    :cond_11
    if-ne p1, v0, :cond_16

    const-string p0, "custom_bedtime"

    return-object p0

    :cond_16
    :goto_16
    const-string/jumbo p0, "unknown"

    return-object p0

    :cond_1a
    const-string/jumbo p0, "yes"

    return-object p0

    :cond_1e
    const-string/jumbo p0, "no"

    return-object p0

    :cond_22
    const-string p0, "auto"

    return-object p0
.end method

.method public static strToNightMode(Ljava/lang/String;)I
    .registers 7

    .line 2357
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    sparse-switch v0, :sswitch_data_52

    :goto_f
    move p0, v5

    goto :goto_49

    :sswitch_11
    const-string v0, "custom_schedule"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1a

    goto :goto_f

    :cond_1a
    const/4 p0, 0x4

    goto :goto_49

    :sswitch_1c
    const-string v0, "auto"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_25

    goto :goto_f

    :cond_25
    move p0, v1

    goto :goto_49

    :sswitch_27
    const-string/jumbo v0, "yes"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_31

    goto :goto_f

    :cond_31
    move p0, v2

    goto :goto_49

    :sswitch_33
    const-string/jumbo v0, "no"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3d

    goto :goto_f

    :cond_3d
    move p0, v3

    goto :goto_49

    :sswitch_3f
    const-string v0, "custom_bedtime"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_48

    goto :goto_f

    :cond_48
    move p0, v4

    :goto_49
    packed-switch p0, :pswitch_data_68

    return v5

    :pswitch_4d
    return v4

    :pswitch_4e
    return v2

    :pswitch_4f
    return v3

    :pswitch_50
    return v1

    nop

    :sswitch_data_52
    .sparse-switch
        -0x2d2c2800 -> :sswitch_3f
        0xdc1 -> :sswitch_33
        0x1d2e7 -> :sswitch_27
        0x2dddaf -> :sswitch_1c
        0x9cc87a5 -> :sswitch_11
    .end sparse-switch

    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_50
    .end packed-switch
.end method

.method public static strToNightModeCustomType(Ljava/lang/String;)I
    .registers 2

    .line 2373
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const-string v0, "custom_bedtime"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "custom_schedule"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15

    const/4 p0, -0x1

    return p0

    :cond_15
    const/4 p0, 0x0

    return p0

    :cond_17
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final handleCarMode()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2384
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 2385
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_f

    .line 2387
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$Shell;->printCurrentCarMode()V

    return v2

    :cond_f
    const-string/jumbo v3, "yes"

    .line 2391
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 2392
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Shell;->mInterface:Landroid/app/IUiModeManager;

    const-string v1, ""

    invoke-interface {v0, v2, v2, v1}, Landroid/app/IUiModeManager;->enableCarMode(IILjava/lang/String;)V

    .line 2393
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$Shell;->printCurrentCarMode()V

    return v2

    :cond_23
    const-string/jumbo v3, "no"

    .line 2395
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 2396
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Shell;->mInterface:Landroid/app/IUiModeManager;

    invoke-interface {v0, v2}, Landroid/app/IUiModeManager;->disableCarMode(I)V

    .line 2397
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$Shell;->printCurrentCarMode()V

    return v2

    :cond_35
    const-string p0, "Error: mode must be \'yes\', or \'no\'"

    .line 2400
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public final handleCustomTime()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2275
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 2277
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$Shell;->printCustomTime()V

    return v1

    :cond_b
    const-string v2, "end"

    .line 2280
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_39

    const-string/jumbo v2, "start"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 2290
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "command must be in [start|end]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 2282
    :cond_27
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 2283
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Shell;->mInterface:Landroid/app/IUiModeManager;

    invoke-static {v0}, Ljava/time/LocalTime;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalTime;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->-$$Nest$smtoMilliSeconds(Ljava/time/LocalTime;)J

    move-result-wide v2

    invoke-interface {p0, v2, v3}, Landroid/app/IUiModeManager;->setCustomNightModeStart(J)V

    return v1

    .line 2286
    :cond_39
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 2287
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Shell;->mInterface:Landroid/app/IUiModeManager;

    invoke-static {v0}, Ljava/time/LocalTime;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalTime;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->-$$Nest$smtoMilliSeconds(Ljava/time/LocalTime;)J

    move-result-wide v2

    invoke-interface {p0, v2, v3}, Landroid/app/IUiModeManager;->setCustomNightModeEnd(J)V

    return v1
.end method

.method public final handleNightMode()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2303
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 2304
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_f

    .line 2306
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$Shell;->printCurrentNightMode()V

    return v2

    .line 2310
    :cond_f
    invoke-static {v1}, Lcom/android/server/UiModeManagerService$Shell;->strToNightMode(Ljava/lang/String;)I

    move-result v3

    .line 2311
    invoke-static {v1}, Lcom/android/server/UiModeManagerService$Shell;->strToNightModeCustomType(Ljava/lang/String;)I

    move-result v1

    if-ltz v3, :cond_2a

    .line 2313
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Shell;->mInterface:Landroid/app/IUiModeManager;

    invoke-interface {v0, v3}, Landroid/app/IUiModeManager;->setNightMode(I)V

    const/4 v0, 0x3

    if-ne v3, v0, :cond_26

    .line 2315
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Shell;->mInterface:Landroid/app/IUiModeManager;

    invoke-interface {v0, v1}, Landroid/app/IUiModeManager;->setNightModeCustomType(I)V

    .line 2317
    :cond_26
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$Shell;->printCurrentNightMode()V

    return v2

    :cond_2a
    const-string p0, "Error: mode must be \'yes\', \'no\', or \'auto\', or \'custom_schedule\', or \'custom_bedtime\'"

    .line 2320
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public onCommand(Ljava/lang/String;)I
    .registers 7

    if-nez p1, :cond_7

    .line 2253
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_7
    const/4 v0, -0x1

    .line 2257
    :try_start_8
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x17fd4

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v2, :cond_34

    const v2, 0x3652cd

    if-eq v1, v2, :cond_29

    const v2, 0x63f6418

    if-eq v1, v2, :cond_1e

    goto :goto_3e

    :cond_1e
    const-string/jumbo v1, "night"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    const/4 v1, 0x0

    goto :goto_3f

    :cond_29
    const-string/jumbo v1, "time"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    move v1, v3

    goto :goto_3f

    :cond_34
    const-string v1, "car"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    move v1, v4

    goto :goto_3f

    :cond_3e
    :goto_3e
    move v1, v0

    :goto_3f
    if-eqz v1, :cond_54

    if-eq v1, v4, :cond_4f

    if-eq v1, v3, :cond_4a

    .line 2265
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 2263
    :cond_4a
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$Shell;->handleCustomTime()I

    move-result p0

    return p0

    .line 2261
    :cond_4f
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$Shell;->handleCarMode()I

    move-result p0

    return p0

    .line 2259
    :cond_54
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$Shell;->handleNightMode()I

    move-result p0
    :try_end_58
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_58} :catch_59

    return p0

    :catch_59
    move-exception p1

    .line 2268
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    .line 2269
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remote exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0
.end method

.method public onHelp()V
    .registers 2

    .line 2237
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "UiModeManager service (uimode) commands:"

    .line 2238
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  help"

    .line 2239
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Print this help text."

    .line 2240
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  night [yes|no|auto|custom_schedule|custom_bedtime]"

    .line 2241
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Set or read night mode."

    .line 2242
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  car [yes|no]"

    .line 2243
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Set or read car mode."

    .line 2244
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  time [start|end] <ISO time>"

    .line 2245
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Set custom start/end schedule time (night mode must be set to custom to apply)."

    .line 2246
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final printCurrentCarMode()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2406
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 2407
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Shell;->mInterface:Landroid/app/IUiModeManager;

    invoke-interface {p0}, Landroid/app/IUiModeManager;->getCurrentModeType()I

    move-result p0

    .line 2408
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Car mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    if-ne p0, v2, :cond_1b

    const-string/jumbo p0, "yes"

    goto :goto_1e

    :cond_1b
    const-string/jumbo p0, "no"

    :goto_1e
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final printCurrentNightMode()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2329
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 2330
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$Shell;->mInterface:Landroid/app/IUiModeManager;

    invoke-interface {v1}, Landroid/app/IUiModeManager;->getNightMode()I

    move-result v1

    .line 2331
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Shell;->mInterface:Landroid/app/IUiModeManager;

    invoke-interface {p0}, Landroid/app/IUiModeManager;->getNightModeCustomType()I

    move-result p0

    .line 2332
    invoke-static {v1, p0}, Lcom/android/server/UiModeManagerService$Shell;->nightModeToStr(II)Ljava/lang/String;

    move-result-object p0

    .line 2333
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Night mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final printCustomTime()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2296
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/UiModeManagerService$Shell;->mInterface:Landroid/app/IUiModeManager;

    .line 2297
    invoke-interface {v2}, Landroid/app/IUiModeManager;->getCustomNightModeStart()J

    move-result-wide v2

    .line 2296
    invoke-static {v2, v3}, Lcom/android/server/UiModeManagerService;->-$$Nest$smfromMilliseconds(J)Ljava/time/LocalTime;

    move-result-object v2

    .line 2297
    invoke-virtual {v2}, Ljava/time/LocalTime;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2296
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2298
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "end "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Shell;->mInterface:Landroid/app/IUiModeManager;

    .line 2299
    invoke-interface {p0}, Landroid/app/IUiModeManager;->getCustomNightModeEnd()J

    move-result-wide v2

    .line 2298
    invoke-static {v2, v3}, Lcom/android/server/UiModeManagerService;->-$$Nest$smfromMilliseconds(J)Ljava/time/LocalTime;

    move-result-object p0

    .line 2299
    invoke-virtual {p0}, Ljava/time/LocalTime;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2298
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
