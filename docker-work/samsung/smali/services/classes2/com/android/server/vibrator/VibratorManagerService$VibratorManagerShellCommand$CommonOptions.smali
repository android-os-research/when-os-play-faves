.class public final Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;
.super Ljava/lang/Object;
.source "VibratorManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CommonOptions"
.end annotation


# instance fields
.field public background:Z

.field public description:Ljava/lang/String;

.field public force:Z

.field public pkgName:Ljava/lang/String;

.field public final synthetic this$1:Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;)V
    .registers 7

    .line 1972
    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->this$1:Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1967
    iput-boolean v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->force:Z

    const-string v1, "Shell command"

    .line 1968
    iput-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->description:Ljava/lang/String;

    .line 1969
    iput-boolean v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->background:Z

    const-string v1, "com.android.shell"

    .line 1970
    iput-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->pkgName:Ljava/lang/String;

    .line 1974
    :goto_12
    invoke-virtual {p1}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_71

    const/4 v2, -0x1

    .line 1975
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x1

    sparse-switch v3, :sswitch_data_72

    goto :goto_4d

    :sswitch_22
    const-string v3, "-p"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    goto :goto_4d

    :cond_2b
    const/4 v2, 0x3

    goto :goto_4d

    :sswitch_2d
    const-string v3, "-f"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    goto :goto_4d

    :cond_36
    const/4 v2, 0x2

    goto :goto_4d

    :sswitch_38
    const-string v3, "-d"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_41

    goto :goto_4d

    :cond_41
    move v2, v4

    goto :goto_4d

    :sswitch_43
    const-string v3, "-B"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4c

    goto :goto_4d

    :cond_4c
    move v2, v0

    :goto_4d
    packed-switch v2, :pswitch_data_84

    return-void

    .line 1989
    :pswitch_51
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1990
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->pkgName:Ljava/lang/String;

    goto :goto_12

    .line 1977
    :pswitch_5b
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1978
    iput-boolean v4, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->force:Z

    goto :goto_12

    .line 1985
    :pswitch_61
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1986
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->description:Ljava/lang/String;

    goto :goto_12

    .line 1981
    :pswitch_6b
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1982
    iput-boolean v4, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->background:Z

    goto :goto_12

    :cond_71
    return-void

    :sswitch_data_72
    .sparse-switch
        0x5b5 -> :sswitch_43
        0x5d7 -> :sswitch_38
        0x5d9 -> :sswitch_2d
        0x5e3 -> :sswitch_22
    .end sparse-switch

    :pswitch_data_84
    .packed-switch 0x0
        :pswitch_6b
        :pswitch_61
        :pswitch_5b
        :pswitch_51
    .end packed-switch
.end method
