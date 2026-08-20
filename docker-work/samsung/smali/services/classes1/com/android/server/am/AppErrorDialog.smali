.class public final Lcom/android/server/am/AppErrorDialog;
.super Lcom/android/server/am/BaseErrorDialog;
.source "AppErrorDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AppErrorDialog$Data;
    }
.end annotation


# static fields
.field public static ALREADY_SHOWING:I = -0x3

.field public static final APP_INFO:I = 0x8

.field public static BACKGROUND_USER:I = -0x2

.field public static final CANCEL:I = 0x7

.field public static CANT_SHOW:I = -0x1

.field public static final DISMISS_TIMEOUT:J = 0x493e0L

.field public static final FORCE_QUIT:I = 0x1

.field public static final FORCE_QUIT_AND_REPORT:I = 0x2

.field public static final MUTE:I = 0x5

.field public static final RESTART:I = 0x3

.field public static final TIMEOUT:I = 0x6


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public final mIsRestartable:Z

.field public final mProc:Lcom/android/server/am/ProcessRecord;

.field public final mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

.field public final mResult:Lcom/android/server/am/AppErrorResult;

.field public final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public static synthetic $r8$lambda$mnEONausw206YJwnp37dQKmik2o(Lcom/android/server/am/AppErrorDialog;Landroid/content/DialogInterface;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/AppErrorDialog;->lambda$new$0(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qIMriI4Re-Vjmlwuub5st2h274s(Landroid/content/DialogInterface;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/am/AppErrorDialog;->lambda$new$1(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetResult(Lcom/android/server/am/AppErrorDialog;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppErrorDialog;->setResult(I)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorDialog$Data;)V
    .registers 10

    .line 80
    invoke-direct {p0, p1}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    .line 205
    new-instance v0, Lcom/android/server/am/AppErrorDialog$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/AppErrorDialog$1;-><init>(Lcom/android/server/am/AppErrorDialog;)V

    iput-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 83
    iput-object p2, p0, Lcom/android/server/am/AppErrorDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 84
    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    iput-object p2, p0, Lcom/android/server/am/AppErrorDialog;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 85
    iget-object p2, p3, Lcom/android/server/am/AppErrorDialog$Data;->proc:Lcom/android/server/am/ProcessRecord;

    iput-object p2, p0, Lcom/android/server/am/AppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    .line 86
    iget-object v2, p3, Lcom/android/server/am/AppErrorDialog$Data;->result:Lcom/android/server/am/AppErrorResult;

    iput-object v2, p0, Lcom/android/server/am/AppErrorDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    .line 87
    iget v2, p3, Lcom/android/server/am/AppErrorDialog$Data;->taskId:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-ne v2, v5, :cond_27

    iget-boolean v2, p3, Lcom/android/server/am/AppErrorDialog$Data;->isRestartableForService:Z

    if-eqz v2, :cond_36

    .line 88
    :cond_27
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "show_restart_in_crash_dialog"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_36

    move v2, v4

    goto :goto_37

    :cond_36
    move v2, v3

    :goto_37
    iput-boolean v2, p0, Lcom/android/server/am/AppErrorDialog;->mIsRestartable:Z

    .line 90
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v2

    .line 93
    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/am/PackageList;->size()I

    move-result v5

    if-ne v5, v4, :cond_7d

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object v5, p2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v5}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_7d

    .line 96
    iget-boolean p3, p3, Lcom/android/server/am/AppErrorDialog$Data;->repeating:Z

    if-eqz p3, :cond_5b

    const p3, 0x1040196

    goto :goto_5e

    :cond_5b
    const p3, 0x1040195

    :goto_5e
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 98
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v3

    iget-object p1, p2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 99
    invoke-virtual {v2, p1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v4

    .line 95
    invoke-virtual {v1, p3, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_9d

    .line 101
    :cond_7d
    iget-object p1, p2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 103
    iget-boolean p3, p3, Lcom/android/server/am/AppErrorDialog$Data;->repeating:Z

    if-eqz p3, :cond_87

    const p3, 0x104019b

    goto :goto_8a

    :cond_87
    const p3, 0x104019a

    :goto_8a
    new-array v5, v4, [Ljava/lang/Object;

    .line 105
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v3

    .line 102
    invoke-virtual {v1, p3, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 108
    :goto_9d
    invoke-virtual {p0, v4}, Landroid/app/AlertDialog;->setCancelable(Z)V

    const/4 p1, 0x7

    .line 109
    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setCancelMessage(Landroid/os/Message;)V

    .line 111
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 112
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Application Error: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 113
    iget p3, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 p3, p3, 0x110

    iput p3, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 115
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 116
    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result p1

    if-eqz p1, :cond_e4

    .line 117
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p3, 0x7da

    invoke-virtual {p1, p3}, Landroid/view/Window;->setType(I)V

    :cond_e4
    const/4 p1, 0x6

    .line 122
    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/32 v1, 0x493e0

    .line 121
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 126
    invoke-static {}, Lcom/samsung/android/feature/SemGateConfig;->isGateEnabled()Z

    move-result p1

    if-eqz p1, :cond_129

    .line 127
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Showing crash dialog for package "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p3, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " u"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AppErrorDialog"

    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    new-instance p1, Lcom/android/server/am/AppErrorDialog$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/am/AppErrorDialog$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/AppErrorDialog;)V

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 145
    new-instance p1, Lcom/android/server/am/AppErrorDialog$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/android/server/am/AppErrorDialog$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_129
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/content/DialogInterface;)V
    .registers 7

    .line 130
    iget-object p0, p0, Lcom/android/server/am/AppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    if-nez p0, :cond_7

    const-string p0, ""

    goto :goto_9

    :cond_7
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 131
    :goto_9
    check-cast p1, Lcom/android/server/am/AppErrorDialog;

    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v2, -0x1

    .line 133
    invoke-virtual {p1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    .line 134
    invoke-virtual {p1, v1}, Landroid/widget/Button;->getLocationOnScreen([I)V

    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<GATE-M>APP_FC:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    aget v3, v1, v3

    .line 137
    invoke-virtual {p1}, Landroid/widget/Button;->getWidth()I

    move-result v4

    div-int/2addr v4, v0

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x1

    aget p0, v1, p0

    .line 138
    invoke-virtual {p1}, Landroid/widget/Button;->getHeight()I

    move-result v1

    div-int/2addr v1, v0

    add-int/2addr p0, v1

    int-to-float p0, p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "</GATE-M>"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "GATE"

    .line 136
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "<GATE-M>APP_FC:Storing dumpstate at /data/log, dumpstate_app_error</GATE-M>"

    .line 140
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-virtual {p1}, Landroid/widget/Button;->performClick()Z

    return-void
.end method

.method public static synthetic lambda$new$1(Landroid/content/DialogInterface;)V
    .registers 2

    const-string p0, "GATE"

    const-string v0, "<GATE-M>APP_FC:FC dialog has been cleared</GATE-M>"

    .line 147
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    .line 214
    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    iget-boolean v0, v0, Lcom/android/server/am/AppErrorResult;->mHasResult:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    .line 216
    invoke-virtual {p0, v0}, Lcom/android/server/am/AppErrorDialog;->setResult(I)V

    .line 218
    :cond_a
    invoke-super {p0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 237
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_40

    goto :goto_3f

    .line 239
    :pswitch_8
    iget-object p0, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3f

    .line 242
    :pswitch_13
    iget-object p0, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3f

    .line 251
    :pswitch_1e
    iget-object p0, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3f

    .line 245
    :pswitch_29
    iget-object p0, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3f

    .line 248
    :pswitch_34
    iget-object p0, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :goto_3f
    return-void

    :pswitch_data_40
    .packed-switch 0x10201d3
        :pswitch_34
        :pswitch_29
        :pswitch_1e
        :pswitch_13
        :pswitch_8
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8

    .line 155
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x102002b

    .line 156
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    .line 157
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 158
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x1090040

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 161
    iget-object p1, p0, Lcom/android/server/am/AppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessErrorStateRecord;->getErrorReportReceiver()Landroid/content/ComponentName;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_28

    move p1, v3

    goto :goto_29

    :cond_28
    move p1, v1

    :goto_29
    const v2, 0x10201d7

    .line 163
    invoke-virtual {p0, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 164
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-boolean v4, p0, Lcom/android/server/am/AppErrorDialog;->mIsRestartable:Z

    const/16 v5, 0x8

    if-eqz v4, :cond_3d

    move v4, v1

    goto :goto_3e

    :cond_3d
    move v4, v5

    :goto_3e
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    const v2, 0x10201d6

    .line 166
    invoke-virtual {p0, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 167
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p1, :cond_51

    move p1, v1

    goto :goto_52

    :cond_51
    move p1, v5

    .line 168
    :goto_52
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :try_start_55
    const-string/jumbo p1, "restriction_policy"

    .line 173
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object p1

    if-eqz p1, :cond_6f

    .line 174
    iget-object v4, p0, Lcom/android/server/am/AppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget v4, v4, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-interface {p1, v4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isGoogleCrashReportAllowedAsUser(I)Z

    move-result p1

    if-nez p1, :cond_6f

    .line 175
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_6f
    .catch Landroid/os/RemoteException; {:try_start_55 .. :try_end_6f} :catch_6f

    :catch_6f
    :cond_6f
    const p1, 0x10201d4

    .line 181
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 182
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x10201d3

    .line 183
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 184
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "device_provisioned"

    invoke-static {v2, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_96

    .line 190
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 194
    :cond_96
    sget-boolean p1, Landroid/os/Build;->IS_USER:Z

    if-nez p1, :cond_b4

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "development_settings_enabled"

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_b4

    .line 196
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "show_mute_in_crash_dialog"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_b4

    goto :goto_b5

    :cond_b4
    move v3, v1

    :goto_b5
    const p1, 0x10201d5

    .line 198
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 199
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v3, :cond_c4

    move v5, v1

    .line 200
    :cond_c4
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    const p1, 0x102029c

    .line 202
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final setResult(I)V
    .registers 5

    .line 222
    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 223
    iget-object v1, p0, Lcom/android/server/am/AppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_14

    .line 226
    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessErrorStateRecord;->getDialogController()Lcom/android/server/am/ErrorDialogController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/am/ErrorDialogController;->clearCrashDialogs(Z)V

    .line 228
    :cond_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_24

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 229
    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    invoke-virtual {v0, p1}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 232
    iget-object p0, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    return-void

    :catchall_24
    move-exception p0

    .line 228
    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method
