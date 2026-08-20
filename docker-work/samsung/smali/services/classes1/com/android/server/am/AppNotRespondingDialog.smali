.class public final Lcom/android/server/am/AppNotRespondingDialog;
.super Lcom/android/server/am/BaseErrorDialog;
.source "AppNotRespondingDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AppNotRespondingDialog$Data;
    }
.end annotation


# static fields
.field public static final ALREADY_SHOWING:I = -0x2

.field public static final CANT_SHOW:I = -0x1

.field public static final FORCE_CLOSE:I = 0x1

.field public static final TAG:Ljava/lang/String; = "AppNotRespondingDialog"

.field public static final WAIT:I = 0x2

.field public static final WAIT_AND_REPORT:I = 0x3


# instance fields
.field public final mData:Lcom/android/server/am/AppNotRespondingDialog$Data;

.field public final mHandler:Landroid/os/Handler;

.field public final mProc:Lcom/android/server/am/ProcessRecord;

.field public final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public static synthetic $r8$lambda$-GiP9nBmc0dc8qoCHWd5nBUa5Q0(Lcom/android/server/am/AppNotRespondingDialog;Landroid/content/DialogInterface;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/AppNotRespondingDialog;->lambda$new$0(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$roBtzWJvYSno9qiIuqbObNTiZ4Q(Landroid/content/DialogInterface;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/am/AppNotRespondingDialog;->lambda$new$1(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmData(Lcom/android/server/am/AppNotRespondingDialog;)Lcom/android/server/am/AppNotRespondingDialog$Data;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/AppNotRespondingDialog;->mData:Lcom/android/server/am/AppNotRespondingDialog$Data;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProc(Lcom/android/server/am/AppNotRespondingDialog;)Lcom/android/server/am/ProcessRecord;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/AppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/am/AppNotRespondingDialog;)Lcom/android/server/am/ActivityManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/AppNotRespondingDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/AppNotRespondingDialog$Data;)V
    .registers 12

    .line 69
    invoke-direct {p0, p2}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    .line 192
    new-instance v0, Lcom/android/server/am/AppNotRespondingDialog$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/AppNotRespondingDialog$1;-><init>(Lcom/android/server/am/AppNotRespondingDialog;)V

    iput-object v0, p0, Lcom/android/server/am/AppNotRespondingDialog;->mHandler:Landroid/os/Handler;

    .line 71
    iput-object p1, p0, Lcom/android/server/am/AppNotRespondingDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 72
    iget-object p1, p3, Lcom/android/server/am/AppNotRespondingDialog$Data;->proc:Lcom/android/server/am/ProcessRecord;

    iput-object p1, p0, Lcom/android/server/am/AppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    .line 73
    iput-object p3, p0, Lcom/android/server/am/AppNotRespondingDialog;->mData:Lcom/android/server/am/AppNotRespondingDialog$Data;

    .line 74
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    .line 76
    invoke-virtual {p0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 79
    iget-object v2, p3, Lcom/android/server/am/AppNotRespondingDialog$Data;->aInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v3, 0x0

    if-eqz v2, :cond_28

    .line 80
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_29

    :cond_28
    move-object v2, v3

    .line 83
    :goto_29
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/am/PackageList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_50

    .line 84
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p2, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_50

    if-eqz v2, :cond_46

    const p2, 0x10401b2

    goto :goto_5d

    .line 89
    :cond_46
    iget-object p2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const v2, 0x10401b4

    move-object v7, v3

    move-object v3, p2

    move p2, v2

    move-object v2, v7

    goto :goto_5d

    :cond_50
    if-eqz v2, :cond_58

    .line 94
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const p2, 0x10401b3

    goto :goto_5d

    .line 97
    :cond_58
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const p2, 0x10401b5

    .line 102
    :goto_5d
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v4

    if-eqz v3, :cond_7f

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    .line 105
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v1

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v5

    invoke-virtual {v0, p2, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_8f

    :cond_7f
    new-array v3, v5, [Ljava/lang/Object;

    .line 106
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-virtual {v0, p2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 104
    :goto_8f
    invoke-virtual {p0, p2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 108
    iget-boolean p2, p3, Lcom/android/server/am/AppNotRespondingDialog$Data;->aboveSystem:Z

    if-eqz p2, :cond_9f

    .line 109
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    const/16 p3, 0x7da

    invoke-virtual {p2, p3}, Landroid/view/Window;->setType(I)V

    .line 111
    :cond_9f
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    .line 112
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Application Not Responding: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/16 p1, 0x110

    .line 113
    iput p1, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 115
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 118
    invoke-static {}, Lcom/samsung/android/feature/SemGateConfig;->isGateEnabled()Z

    move-result p1

    if-eqz p1, :cond_e0

    .line 119
    new-instance p1, Lcom/android/server/am/AppNotRespondingDialog$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/am/AppNotRespondingDialog$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/AppNotRespondingDialog;)V

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 135
    new-instance p1, Lcom/android/server/am/AppNotRespondingDialog$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/android/server/am/AppNotRespondingDialog$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_e0
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/content/DialogInterface;)V
    .registers 7

    .line 120
    iget-object p0, p0, Lcom/android/server/am/AppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    if-nez p0, :cond_7

    const-string p0, ""

    goto :goto_9

    :cond_7
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 121
    :goto_9
    check-cast p1, Lcom/android/server/am/AppNotRespondingDialog;

    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v2, -0x1

    .line 123
    invoke-virtual {p1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    .line 124
    invoke-virtual {p1, v1}, Landroid/widget/Button;->getLocationOnScreen([I)V

    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<GATE-M>APP_ANR:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    aget v3, v1, v3

    .line 127
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

    .line 128
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

    .line 126
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "<GATE-M>APP_ANR:Storing dumpstate at /data/log/, dumpstate_app_anr</GATE-M>"

    .line 130
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-virtual {p1}, Landroid/widget/Button;->performClick()Z

    return-void
.end method

.method public static synthetic lambda$new$1(Landroid/content/DialogInterface;)V
    .registers 2

    const-string p0, "GATE"

    const-string v0, "<GATE-M>APP_ANR:ANR dialog has been cleared</GATE-M>"

    .line 137
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public closeDialog()V
    .registers 2

    .line 244
    iget-object p0, p0, Lcom/android/server/am/AppNotRespondingDialog;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 177
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x10201d4

    if-eq p1, v0, :cond_2a

    const v0, 0x10201d6

    if-eq p1, v0, :cond_1f

    const v0, 0x10201d8

    if-eq p1, v0, :cond_14

    goto :goto_34

    .line 185
    :cond_14
    iget-object p0, p0, Lcom/android/server/am/AppNotRespondingDialog;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_34

    .line 179
    :cond_1f
    iget-object p0, p0, Lcom/android/server/am/AppNotRespondingDialog;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_34

    .line 182
    :cond_2a
    iget-object p0, p0, Lcom/android/server/am/AppNotRespondingDialog;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :goto_34
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    .line 145
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x102002b

    .line 146
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    .line 147
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 148
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x109003e

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const p1, 0x10201d6

    .line 151
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 152
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object v0, p0, Lcom/android/server/am/AppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessErrorStateRecord;->getErrorReportReceiver()Landroid/content/ComponentName;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_33

    goto :goto_34

    :cond_33
    move v2, v1

    :goto_34
    const/16 v0, 0x8

    if-eqz v2, :cond_3a

    move v2, v1

    goto :goto_3b

    :cond_3a
    move v2, v0

    .line 154
    :goto_3b
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :try_start_3e
    const-string/jumbo v2, "restriction_policy"

    .line 159
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v2

    if-eqz v2, :cond_58

    .line 160
    iget-object v3, p0, Lcom/android/server/am/AppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget v3, v3, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-interface {v2, v3}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isGoogleCrashReportAllowedAsUser(I)Z

    move-result v2

    if-nez v2, :cond_58

    .line 161
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_58
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_58} :catch_58

    :catch_58
    :cond_58
    const p1, 0x10201d4

    .line 167
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 168
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x10201d8

    .line 169
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 170
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x102029c

    .line 172
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
