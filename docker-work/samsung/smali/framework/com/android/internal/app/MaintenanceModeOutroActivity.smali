.class public Lcom/android/internal/app/MaintenanceModeOutroActivity;
.super Landroid/app/Activity;
.source "MaintenanceModeOutroActivity.java"


# static fields
.field private static final blacklist EXIT_PROGRESS_TIMEOUT:J = 0x1d4c0L

.field private static final blacklist TAG:Ljava/lang/String; = "MaintenanceMode"


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mExitButton:Landroid/widget/Button;

.field private blacklist mIsFold:Z

.field private blacklist mIsTablet:Z

.field private blacklist mProgressView:Landroid/view/View;

.field private blacklist mRootView:Landroid/view/View;

.field private blacklist mViewWindowParams:Landroid/view/WindowManager$LayoutParams;

.field private blacklist mWm:Landroid/view/WindowManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmExitButton(Lcom/android/internal/app/MaintenanceModeOutroActivity;)Landroid/widget/Button;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/app/MaintenanceModeOutroActivity;->mExitButton:Landroid/widget/Button;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmProgressView(Lcom/android/internal/app/MaintenanceModeOutroActivity;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/app/MaintenanceModeOutroActivity;->mProgressView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRootView(Lcom/android/internal/app/MaintenanceModeOutroActivity;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/app/MaintenanceModeOutroActivity;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmViewWindowParams(Lcom/android/internal/app/MaintenanceModeOutroActivity;)Landroid/view/WindowManager$LayoutParams;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/app/MaintenanceModeOutroActivity;->mViewWindowParams:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWm(Lcom/android/internal/app/MaintenanceModeOutroActivity;)Landroid/view/WindowManager;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/app/MaintenanceModeOutroActivity;->mWm:Landroid/view/WindowManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mconfirmSecureLock(Lcom/android/internal/app/MaintenanceModeOutroActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/app/MaintenanceModeOutroActivity;->confirmSecureLock()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mexitMaintenanceMode(Lcom/android/internal/app/MaintenanceModeOutroActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/app/MaintenanceModeOutroActivity;->exitMaintenanceMode()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mshowDialog(Lcom/android/internal/app/MaintenanceModeOutroActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/app/MaintenanceModeOutroActivity;->showDialog()V

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/MaintenanceModeOutroActivity;->mIsTablet:Z

    .line 47
    iput-boolean v0, p0, Lcom/android/internal/app/MaintenanceModeOutroActivity;->mIsFold:Z

    return-void
.end method

.method private blacklist confirmSecureLock()V
    .registers 7

    .line 212
    new-instance v0, Landroid/hardware/biometrics/BiometricPrompt$Builder;

    iget-object v1, p0, Lcom/android/internal/app/MaintenanceModeOutroActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;-><init>(Landroid/content/Context;)V

    .line 213
    .local v0, "builder":Landroid/hardware/biometrics/BiometricPrompt$Builder;
    invoke-virtual {v0}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setUseDefaultTitle()Landroid/hardware/biometrics/BiometricPrompt$Builder;

    .line 214
    const v1, 0x80ff

    invoke-virtual {v0, v1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setAllowedAuthenticators(I)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    .line 217
    invoke-virtual {v0}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->build()Landroid/hardware/biometrics/BiometricPrompt;

    move-result-object v1

    .line 219
    .local v1, "biometricPrompt":Landroid/hardware/biometrics/BiometricPrompt;
    new-instance v2, Landroid/os/CancellationSignal;

    invoke-direct {v2}, Landroid/os/CancellationSignal;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/app/MaintenanceModeOutroActivity;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    new-instance v4, Lcom/android/internal/app/MaintenanceModeOutroActivity$4;

    invoke-direct {v4, p0}, Lcom/android/internal/app/MaintenanceModeOutroActivity$4;-><init>(Lcom/android/internal/app/MaintenanceModeOutroActivity;)V

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/hardware/biometrics/BiometricPrompt;->authenticateUser(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;I)V

    .line 246
    return-void
.end method

.method private blacklist exitMaintenanceMode()V
    .registers 4

    .line 250
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/app/MaintenanceModeOutroActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 251
    .local v0, "um":Landroid/os/UserManager;
    const/16 v1, 0x4d

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->removeUser(I)Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_12

    .line 254
    nop

    .end local v0    # "um":Landroid/os/UserManager;
    goto :goto_1a

    .line 252
    :catch_12
    move-exception v0

    .line 253
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MaintenanceMode"

    const-string v2, "Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 255
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1a
    return-void
.end method

.method private blacklist init()V
    .registers 10

    .line 163
    invoke-virtual {p0}, Lcom/android/internal/app/MaintenanceModeOutroActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/MaintenanceModeOutroActivity;->mRootView:Landroid/view/View;

    .line 165
    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Lcom/android/internal/app/MaintenanceModeOutroActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/internal/app/MaintenanceModeOutroActivity;->mWm:Landroid/view/WindowManager;

    .line 166
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x7e8

    const v7, 0x20100

    const/4 v8, -0x3

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iput-object v0, p0, Lcom/android/internal/app/MaintenanceModeOutroActivity;->mViewWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 173
    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 174
    iget-object v0, p0, Lcom/android/internal/app/MaintenanceModeOutroActivity;->mViewWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 175
    iget-object v0, p0, Lcom/android/internal/app/MaintenanceModeOutroActivity;->mViewWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 176
    iget-object v0, p0, Lcom/android/internal/app/MaintenanceModeOutroActivity;->mViewWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 178
    iget-object v0, p0, Lcom/android/internal/app/MaintenanceModeOutroActivity;->mViewWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsSides(I)V

    .line 180
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x10901d9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/MaintenanceModeOutroActivity;->mProgressView:Landroid/view/View;

    .line 181
    return-void
.end method

.method private blacklist setContentView(Landroid/content/res/Configuration;)V
    .registers 12
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 72
    iget-object v0, p0, Lcom/android/internal/app/MaintenanceModeOutroActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 74
    .local v0, "r":Landroid/content/res/Resources;
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v1, v3, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    move v1, v2

    .line 75
    .local v1, "isLandscape":Z
    :goto_f
    iget-object v3, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->isPopOver()Z

    move-result v3

    .line 76
    .local v3, "isPopOver":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isPopOver: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MaintenanceMode"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-boolean v4, p0, Lcom/android/internal/app/MaintenanceModeOutroActivity;->mIsTablet:Z

    const v5, 0x10203dc

    const v6, 0x109002d

    if-eqz v4, :cond_60

    .line 79
    invoke-virtual {p0, v6}, Lcom/android/internal/app/MaintenanceModeOutroActivity;->setContentView(I)V

    .line 80
    invoke-virtual {p0, v5}, Lcom/android/internal/app/MaintenanceModeOutroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 81
    .local v4, "container":Landroid/view/View;
    const/4 v5, 0x0

    .line 82
    .local v5, "padding":I
    if-eqz v3, :cond_4b

    .line 83
    if-eqz v1, :cond_5c

    .line 84
    const v6, 0x1050204

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    goto :goto_5c

    .line 88
    :cond_4b
    if-eqz v1, :cond_55

    .line 89
    const v6, 0x1050203

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    goto :goto_5c

    .line 92
    :cond_55
    const v6, 0x1050202

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 96
    :cond_5c
    :goto_5c
    invoke-virtual {v4, v5, v2, v5, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 97
    .end local v4    # "container":Landroid/view/View;
    .end local v5    # "padding":I
    goto :goto_c3

    :cond_60
    iget-boolean v4, p0, Lcom/android/internal/app/MaintenanceModeOutroActivity;->mIsFold:Z

    const v7, 0x109002e

    const/16 v8, 0x400

    if-eqz v4, :cond_ac

    .line 98
    iget v4, p1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    const/4 v9, 0x5

    if-ne v4, v9, :cond_86

    .line 99
    if-eqz v1, :cond_7b

    .line 100
    invoke-virtual {p0, v7}, Lcom/android/internal/app/MaintenanceModeOutroActivity;->setContentView(I)V

    .line 101
    invoke-virtual {p0}, Lcom/android/internal/app/MaintenanceModeOutroActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/Window;->addFlags(I)V

    goto :goto_c3

    .line 103
    :cond_7b
    invoke-virtual {p0, v6}, Lcom/android/internal/app/MaintenanceModeOutroActivity;->setContentView(I)V

    .line 104
    invoke-virtual {p0}, Lcom/android/internal/app/MaintenanceModeOutroActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_c3

    .line 107
    :cond_86
    invoke-virtual {p0, v6}, Lcom/android/internal/app/MaintenanceModeOutroActivity;->setContentView(I)V

    .line 108
    invoke-virtual {p0}, Lcom/android/internal/app/MaintenanceModeOutroActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/Window;->clearFlags(I)V

    .line 109
    invoke-virtual {p0, v5}, Lcom/android/internal/app/MaintenanceModeOutroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 110
    .restart local v4    # "container":Landroid/view/View;
    const/4 v5, 0x0

    .line 111
    .restart local v5    # "padding":I
    if-nez v3, :cond_a8

    .line 112
    if-eqz v1, :cond_a1

    .line 113
    const v6, 0x1050201

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    goto :goto_a8

    .line 116
    :cond_a1
    const v6, 0x1050200

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 120
    :cond_a8
    :goto_a8
    invoke-virtual {v4, v5, v2, v5, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 121
    .end local v4    # "container":Landroid/view/View;
    .end local v5    # "padding":I
    goto :goto_c3

    .line 123
    :cond_ac
    if-eqz v1, :cond_b9

    .line 124
    invoke-virtual {p0, v7}, Lcom/android/internal/app/MaintenanceModeOutroActivity;->setContentView(I)V

    .line 125
    invoke-virtual {p0}, Lcom/android/internal/app/MaintenanceModeOutroActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/Window;->addFlags(I)V

    goto :goto_c3

    .line 127
    :cond_b9
    invoke-virtual {p0, v6}, Lcom/android/internal/app/MaintenanceModeOutroActivity;->setContentView(I)V

    .line 128
    invoke-virtual {p0}, Lcom/android/internal/app/MaintenanceModeOutroActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/Window;->clearFlags(I)V

    .line 132
    :goto_c3
    const v4, 0x10203e0

    invoke-virtual {p0, v4}, Lcom/android/internal/app/MaintenanceModeOutroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 133
    .local v4, "outroTextView":Landroid/widget/TextView;
    iget-boolean v5, p0, Lcom/android/internal/app/MaintenanceModeOutroActivity;->mIsTablet:Z

    if-eqz v5, :cond_d7

    .line 134
    const v5, 0x1040710

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_dd

    .line 136
    :cond_d7
    const v5, 0x104070f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 139
    :goto_dd
    invoke-virtual {p0}, Lcom/android/internal/app/MaintenanceModeOutroActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/app/MaintenanceModeOutroActivity;->mContext:Landroid/content/Context;

    const v7, 0x1060223

    invoke-virtual {v6, v7}, Landroid/content/Context;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 141
    iget-boolean v5, p0, Lcom/android/internal/app/MaintenanceModeOutroActivity;->mIsTablet:Z

    if-eqz v5, :cond_104

    .line 142
    const v5, 0x10203df

    invoke-virtual {p0, v5}, Lcom/android/internal/app/MaintenanceModeOutroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 143
    .local v5, "imageView":Landroid/widget/ImageView;
    const v6, 0x1050221

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 147
    .end local v5    # "imageView":Landroid/widget/ImageView;
    :cond_104
    const v5, 0x10203dd

    invoke-virtual {p0, v5}, Lcom/android/internal/app/MaintenanceModeOutroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/internal/app/MaintenanceModeOutroActivity;->mExitButton:Landroid/widget/Button;

    .line 148
    iget-boolean v6, p0, Lcom/android/internal/app/MaintenanceModeOutroActivity;->mIsTablet:Z

    if-eqz v6, :cond_11d

    .line 149
    const v6, 0x10501ff

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setWidth(I)V

    .line 152
    :cond_11d
    iget-object v5, p0, Lcom/android/internal/app/MaintenanceModeOutroActivity;->mExitButton:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/internal/app/MaintenanceModeOutroActivity;->mContext:Landroid/content/Context;

    const v7, 0x1050206

    .line 153
    invoke-static {v6, v7}, Lcom/android/internal/app/MaintenanceModeUtils;->getFontSize(Landroid/content/Context;I)F

    move-result v6

    .line 152
    invoke-virtual {v5, v2, v6}, Landroid/widget/Button;->setTextSize(IF)V

    .line 154
    iget-object v2, p0, Lcom/android/internal/app/MaintenanceModeOutroActivity;->mExitButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/internal/app/MaintenanceModeOutroActivity$1;

    invoke-direct {v5, p0}, Lcom/android/internal/app/MaintenanceModeOutroActivity$1;-><init>(Lcom/android/internal/app/MaintenanceModeOutroActivity;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    return-void
.end method

.method private blacklist showDialog()V
    .registers 5

    .line 190
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 191
    iget-boolean v1, p0, Lcom/android/internal/app/MaintenanceModeOutroActivity;->mIsTablet:Z

    if-eqz v1, :cond_d

    .line 192
    const v1, 0x104070c

    goto :goto_10

    .line 193
    :cond_d
    const v1, 0x104070b

    .line 191
    :goto_10
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x10406f7

    new-instance v2, Lcom/android/internal/app/MaintenanceModeOutroActivity$3;

    invoke-direct {v2, p0}, Lcom/android/internal/app/MaintenanceModeOutroActivity$3;-><init>(Lcom/android/internal/app/MaintenanceModeOutroActivity;)V

    .line 194
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x10406f5

    new-instance v2, Lcom/android/internal/app/MaintenanceModeOutroActivity$2;

    invoke-direct {v2, p0}, Lcom/android/internal/app/MaintenanceModeOutroActivity$2;-><init>(Lcom/android/internal/app/MaintenanceModeOutroActivity;)V

    .line 200
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 206
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 207
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x50

    invoke-virtual {v2, v3}, Landroid/view/Window;->setGravity(I)V

    .line 208
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 209
    return-void
.end method


# virtual methods
.method public whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 185
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 186
    invoke-direct {p0, p1}, Lcom/android/internal/app/MaintenanceModeOutroActivity;->setContentView(Landroid/content/res/Configuration;)V

    .line 187
    return-void
.end method

.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Lcom/android/internal/app/MaintenanceModeOutroActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/MaintenanceModeOutroActivity;->mContext:Landroid/content/Context;

    .line 59
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    const/16 v1, 0x4d

    if-eq v0, v1, :cond_15

    .line 60
    invoke-virtual {p0}, Lcom/android/internal/app/MaintenanceModeOutroActivity;->finish()V

    .line 61
    return-void

    .line 64
    :cond_15
    invoke-static {}, Lcom/android/internal/app/MaintenanceModeUtils;->isTablet()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/app/MaintenanceModeOutroActivity;->mIsTablet:Z

    .line 65
    invoke-static {}, Lcom/android/internal/app/MaintenanceModeUtils;->isFold()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/app/MaintenanceModeOutroActivity;->mIsFold:Z

    .line 67
    invoke-virtual {p0}, Lcom/android/internal/app/MaintenanceModeOutroActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/app/MaintenanceModeOutroActivity;->setContentView(Landroid/content/res/Configuration;)V

    .line 68
    invoke-direct {p0}, Lcom/android/internal/app/MaintenanceModeOutroActivity;->init()V

    .line 69
    return-void
.end method
