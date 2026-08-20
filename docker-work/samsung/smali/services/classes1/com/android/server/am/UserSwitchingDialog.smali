.class public Lcom/android/server/am/UserSwitchingDialog;
.super Landroid/app/AlertDialog;
.source "UserSwitchingDialog.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnWindowShownListener;


# static fields
.field public static final DEBUG:Z = true

.field public static final DISMISS_DIALOG_TIMEOUT_MS:I = 0x2710

.field public static final MSG_DISMISS_DIALOG:I = 0x2

.field public static final MSG_START_USER:I = 0x1

.field public static final TAG:Ljava/lang/String; = "ActivityManagerUserSwitchingDialog"

.field public static final WINDOW_SHOWN_TIMEOUT_MS:I = 0xbb8


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mNewUser:Landroid/content/pm/UserInfo;

.field public final mOldUser:Landroid/content/pm/UserInfo;

.field public final mService:Lcom/android/server/am/ActivityManagerService;

.field public mStartedUser:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public final mSwitchingFromSystemUserMessage:Ljava/lang/String;

.field public final mSwitchingToSystemUserMessage:Ljava/lang/String;

.field public final mUserId:I


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 80
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_12

    const v0, 0x10302d1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 77
    :goto_13
    invoke-direct {p0, p2, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 211
    new-instance v0, Lcom/android/server/am/UserSwitchingDialog$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/UserSwitchingDialog$1;-><init>(Lcom/android/server/am/UserSwitchingDialog;)V

    iput-object v0, p0, Lcom/android/server/am/UserSwitchingDialog;->mHandler:Landroid/os/Handler;

    .line 85
    iput-object p2, p0, Lcom/android/server/am/UserSwitchingDialog;->mContext:Landroid/content/Context;

    .line 86
    iput-object p1, p0, Lcom/android/server/am/UserSwitchingDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 87
    iget p1, p4, Landroid/content/pm/UserInfo;->id:I

    iput p1, p0, Lcom/android/server/am/UserSwitchingDialog;->mUserId:I

    .line 88
    iput-object p3, p0, Lcom/android/server/am/UserSwitchingDialog;->mOldUser:Landroid/content/pm/UserInfo;

    .line 89
    iput-object p4, p0, Lcom/android/server/am/UserSwitchingDialog;->mNewUser:Landroid/content/pm/UserInfo;

    .line 90
    iput-object p6, p0, Lcom/android/server/am/UserSwitchingDialog;->mSwitchingFromSystemUserMessage:Ljava/lang/String;

    .line 91
    iput-object p7, p0, Lcom/android/server/am/UserSwitchingDialog;->mSwitchingToSystemUserMessage:Ljava/lang/String;

    .line 93
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->inflateContent()V

    if-eqz p5, :cond_3b

    .line 96
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x7da

    invoke-virtual {p1, p2}, Landroid/view/Window;->setType(I)V

    .line 99
    :cond_3b
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/16 p2, 0x110

    .line 100
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 102
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 3

    .line 200
    monitor-enter p0

    .line 201
    :try_start_1
    invoke-super {p0}, Landroid/app/AlertDialog;->dismiss()V

    .line 202
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 204
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnWindowShownListener(Landroid/view/ViewTreeObserver$OnWindowShownListener;)V

    .line 206
    :cond_15
    iget-object v0, p0, Lcom/android/server/am/UserSwitchingDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 207
    monitor-exit p0

    return-void

    :catchall_1d
    move-exception v0

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public inflateContent()V
    .registers 8

    const/4 v0, 0x0

    .line 107
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 108
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 110
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x10901d8

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 114
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v3

    const/4 v5, 0x1

    if-eqz v3, :cond_3b

    iget-object v3, p0, Lcom/android/server/am/UserSwitchingDialog;->mNewUser:Landroid/content/pm/UserInfo;

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    if-nez v3, :cond_3b

    const v3, 0x1040ecc

    new-array v4, v5, [Ljava/lang/Object;

    .line 115
    iget-object v5, p0, Lcom/android/server/am/UserSwitchingDialog;->mOldUser:Landroid/content/pm/UserInfo;

    iget-object v5, v5, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    aput-object v5, v4, v0

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8f

    .line 116
    :cond_3b
    iget-object v3, p0, Lcom/android/server/am/UserSwitchingDialog;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 117
    iget-object v0, p0, Lcom/android/server/am/UserSwitchingDialog;->mOldUser:Landroid/content/pm/UserInfo;

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isDemo()Z

    move-result v0

    if-eqz v0, :cond_53

    const v0, 0x104041f

    .line 118
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_8f

    :cond_53
    const v0, 0x1040420

    .line 120
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_8f

    .line 123
    :cond_5b
    iget-object v3, p0, Lcom/android/server/am/UserSwitchingDialog;->mOldUser:Landroid/content/pm/UserInfo;

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    if-nez v3, :cond_64

    .line 124
    iget-object v3, p0, Lcom/android/server/am/UserSwitchingDialog;->mSwitchingFromSystemUserMessage:Ljava/lang/String;

    goto :goto_6e

    .line 125
    :cond_64
    iget-object v3, p0, Lcom/android/server/am/UserSwitchingDialog;->mNewUser:Landroid/content/pm/UserInfo;

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    if-nez v3, :cond_6d

    .line 126
    iget-object v3, p0, Lcom/android/server/am/UserSwitchingDialog;->mSwitchingToSystemUserMessage:Ljava/lang/String;

    goto :goto_6e

    :cond_6d
    move-object v3, v4

    :goto_6e
    if-nez v3, :cond_80

    const v3, 0x1040c34

    new-array v5, v5, [Ljava/lang/Object;

    .line 134
    iget-object v6, p0, Lcom/android/server/am/UserSwitchingDialog;->mNewUser:Landroid/content/pm/UserInfo;

    iget-object v6, v6, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    aput-object v6, v5, v0

    invoke-virtual {v1, v3, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_81

    :cond_80
    move-object v0, v3

    .line 142
    :goto_81
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x1080596

    invoke-virtual {v1, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 141
    invoke-virtual {v2, v4, v1, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 144
    :goto_8f
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setAccessibilityPaneTitle(Ljava/lang/CharSequence;)V

    .line 145
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    invoke-virtual {p0, v2}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    return-void
.end method

.method public onWindowShown()V
    .registers 3

    const-string v0, "ActivityManagerUserSwitchingDialog"

    const-string/jumbo v1, "onWindowShown called"

    .line 171
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->startUser()V

    return-void
.end method

.method public show()V
    .registers 5

    const-string v0, "ActivityManagerUserSwitchingDialog"

    const-string/jumbo v1, "show called"

    .line 151
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    .line 153
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 155
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnWindowShownListener(Landroid/view/ViewTreeObserver$OnWindowShownListener;)V

    .line 159
    :cond_1c
    iget-object v0, p0, Lcom/android/server/am/UserSwitchingDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 163
    iget-object p0, p0, Lcom/android/server/am/UserSwitchingDialog;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public startUser()V
    .registers 4

    .line 176
    monitor-enter p0

    .line 177
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/am/UserSwitchingDialog;->mStartedUser:Z

    if-nez v0, :cond_30

    const-string v0, "ActivityManagerUserSwitchingDialog"

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "starting user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/UserSwitchingDialog;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v0, p0, Lcom/android/server/am/UserSwitchingDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    iget v1, p0, Lcom/android/server/am/UserSwitchingDialog;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController;->startUserInForeground(I)V

    const/4 v0, 0x1

    .line 180
    iput-boolean v0, p0, Lcom/android/server/am/UserSwitchingDialog;->mStartedUser:Z

    .line 190
    iget-object v1, p0, Lcom/android/server/am/UserSwitchingDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_4e

    :cond_30
    const-string v0, "ActivityManagerUserSwitchingDialog"

    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/UserSwitchingDialog;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " already started"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :goto_4e
    monitor-exit p0

    return-void

    :catchall_50
    move-exception v0

    monitor-exit p0
    :try_end_52
    .catchall {:try_start_1 .. :try_end_52} :catchall_50

    throw v0
.end method
