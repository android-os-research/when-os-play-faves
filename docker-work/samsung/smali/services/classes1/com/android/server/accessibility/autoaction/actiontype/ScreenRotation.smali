.class public Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;
.super Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;
.source "ScreenRotation.java"


# static fields
.field public static final ROTATION_0:I = 0x0

.field public static final ROTATION_180:I = 0x2

.field public static final ROTATION_270:I = 0x3

.field public static final ROTATION_90:I = 0x1


# instance fields
.field public mAccelerometerRotationUri:Ljava/lang/String;

.field public mContext:Landroid/content/Context;

.field public mUserId:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAccelerometerRotationUri(Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;->mAccelerometerRotationUri:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserId(Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;)I
    .registers 1

    iget p0, p0, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;->mUserId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$mrotateScreen(Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;->rotateScreen()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3

    .line 40
    invoke-direct {p0}, Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;->mContext:Landroid/content/Context;

    .line 42
    iput p2, p0, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;->mUserId:I

    return-void
.end method

.method public static createAction(Landroid/content/Context;I)Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;
    .registers 3

    .line 46
    new-instance v0, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;

    invoke-direct {v0, p0, p1}, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public static getStringResId()I
    .registers 1

    const v0, 0x1040122

    return v0
.end method


# virtual methods
.method public final initDialog()V
    .registers 4

    .line 93
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1040e20

    .line 94
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x10402c0

    .line 95
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation$2;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation$2;-><init>(Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;)V

    const v2, 0x1040e28

    .line 96
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation$1;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation$1;-><init>(Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;)V

    const/high16 p0, 0x1040000

    .line 104
    invoke-virtual {v0, p0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const/4 v0, 0x1

    .line 109
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 110
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 111
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x8e8

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 112
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 113
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public final isAutoRotateScreen()Z
    .registers 6

    .line 75
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.folder_type"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;->mContext:Landroid/content/Context;

    .line 76
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "com.sec.feature.dual_lcd"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    move v0, v1

    goto :goto_21

    :cond_20
    move v0, v2

    .line 77
    :goto_21
    iget-object v3, p0, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;->mContext:Landroid/content/Context;

    .line 78
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_32

    move v3, v1

    goto :goto_33

    :cond_32
    move v3, v2

    :goto_33
    if-eqz v0, :cond_3c

    if-nez v3, :cond_3c

    const-string v0, "accelerometer_rotation_second"

    .line 83
    iput-object v0, p0, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;->mAccelerometerRotationUri:Ljava/lang/String;

    goto :goto_40

    :cond_3c
    const-string v0, "accelerometer_rotation"

    .line 85
    iput-object v0, p0, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;->mAccelerometerRotationUri:Ljava/lang/String;

    .line 88
    :goto_40
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;->mAccelerometerRotationUri:Ljava/lang/String;

    iget p0, p0, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;->mUserId:I

    invoke-static {v0, v3, v2, p0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-ne p0, v1, :cond_51

    goto :goto_52

    :cond_51
    move v1, v2

    :goto_52
    return v1
.end method

.method public performCornerAction(I)V
    .registers 2

    .line 55
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;->isAutoRotateScreen()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 56
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;->initDialog()V

    return-void

    .line 59
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;->rotateScreen()V

    return-void
.end method

.method public final rotateScreen()V
    .registers 5

    .line 63
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;->mUserId:I

    const-string/jumbo v2, "user_rotation"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_15

    move v3, v1

    goto :goto_1c

    :cond_15
    if-eq v0, v1, :cond_1c

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1b

    goto :goto_1c

    :cond_1b
    move v3, v0

    .line 70
    :cond_1c
    :goto_1c
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget p0, p0, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;->mUserId:I

    invoke-static {v0, v2, v3, p0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method
