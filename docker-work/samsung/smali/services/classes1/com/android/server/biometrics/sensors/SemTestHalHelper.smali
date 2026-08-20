.class public Lcom/android/server/biometrics/sensors/SemTestHalHelper;
.super Ljava/lang/Object;
.source "SemTestHalHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;,
        Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;,
        Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "SemTestHalHelper"

.field public static final TPA_ACTION_ACQUIRED_KEY:Ljava/lang/String; = "acquiredInfo"

.field public static final TPA_ACTION_AUTH_KEY:Ljava/lang/String; = "authenticate"

.field public static final TPA_ACTION_DELAY_KEY:Ljava/lang/String; = "delay"

.field public static final TPA_ACTION_ENROLL_KEY:Ljava/lang/String; = "enroll"

.field public static final TPA_ACTION_ERROR_KEY:Ljava/lang/String; = "errorCode"

.field public static final TPA_ACTION_ID_KEY:Ljava/lang/String; = "Id"

.field public static final TPA_ACTION_LIST_KEY:Ljava/lang/String; = "actionList"

.field public static final TPA_ACTION_REMAINING_KEY:Ljava/lang/String; = "remaining"

.field public static final TPA_ACTION_TSP_EVENT:Ljava/lang/String; = "TspEvent"

.field public static final TPA_ACTION_TYPE_KEY:Ljava/lang/String; = "type"

.field public static final TPA_ACTION_VENDOR_CODE_KEY:Ljava/lang/String; = "vendorCode"

.field public static final TPA_FACE_ACTION_PATH:Ljava/lang/String; = "/data/.biometric/face/tpa.json"

.field public static final TPA_FP_ACTION_PATH:Ljava/lang/String; = "/data/.biometric/fingerprint/tpa.json"


# instance fields
.field public final mAuthActionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;",
            ">;"
        }
    .end annotation
.end field

.field public final mBiometricType:I

.field public final mCallback:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;

.field public final mEnrollActionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;)V
    .registers 3

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    iput p1, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mBiometricType:I

    .line 154
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mCallback:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;

    .line 155
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mEnrollActionList:Ljava/util/List;

    .line 156
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mAuthActionList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final addDefaultAuthenticateAction()V
    .registers 5

    .line 203
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mAuthActionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 205
    iget v0, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mBiometricType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_23

    .line 206
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mAuthActionList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->addFpAuthenticateAction(Ljava/util/List;Z)V

    .line 207
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mAuthActionList:Ljava/util/List;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->addFpCaptureFailedAction(Ljava/util/List;II)V

    .line 208
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mAuthActionList:Ljava/util/List;

    const/4 v1, 0x6

    const/16 v3, 0x3eb

    invoke-virtual {p0, v0, v1, v3}, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->addFpCaptureFailedAction(Ljava/util/List;II)V

    .line 210
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mAuthActionList:Ljava/util/List;

    invoke-virtual {p0, v0, v2}, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->addFpAuthenticateAction(Ljava/util/List;Z)V

    .line 212
    :cond_23
    iget v0, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mBiometricType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2e

    .line 213
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mAuthActionList:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->addFaceDefaultAuthSuccessAction(Ljava/util/List;)V

    :cond_2e
    return-void
.end method

.method public final addDefaultEnrollAction()V
    .registers 7

    .line 185
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mEnrollActionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 187
    iget v0, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mBiometricType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2d

    const/4 v0, 0x1

    :goto_b
    const/4 v1, 0x5

    if-gt v0, v1, :cond_2d

    .line 190
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mEnrollActionList:Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->addFpDefaultCaptureSuccessAction(Ljava/util/List;)V

    .line 192
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mEnrollActionList:Ljava/util/List;

    new-instance v2, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    sget-object v3, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;->ENROLL_RESULT:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mCallback:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;

    mul-int/lit8 v5, v0, 0x14

    rsub-int/lit8 v5, v5, 0x64

    invoke-direct {v2, v3, v4, v5}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;-><init>(Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mEnrollActionList:Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->addFingerLeaveAction(Ljava/util/List;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 197
    :cond_2d
    iget v0, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mBiometricType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_38

    .line 198
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mEnrollActionList:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->addFaceDefaultEnrollSuccessAction(Ljava/util/List;)V

    :cond_38
    return-void
.end method

.method public final addFaceDefaultAuthSuccessAction(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;",
            ">;)V"
        }
    .end annotation

    .line 302
    new-instance v0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    sget-object v1, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;->ACQUIRED:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mCallback:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;-><init>(Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;II)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->setDelay(J)Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    new-instance v0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    sget-object v4, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;->AUTHENTICATED:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mCallback:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;

    invoke-direct {v0, v4, p0, v3}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;-><init>(Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;I)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->setDelay(J)Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addFaceDefaultEnrollSuccessAction(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;",
            ">;)V"
        }
    .end annotation

    .line 295
    new-instance v0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    sget-object v1, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;->ENROLL_RESULT:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mCallback:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;

    const/16 v3, 0x46

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;-><init>(Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;I)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->setDelay(J)Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    new-instance v0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mCallback:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;

    const/16 v5, 0x32

    invoke-direct {v0, v1, v4, v5}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;-><init>(Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;I)V

    invoke-virtual {v0, v2, v3}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->setDelay(J)Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    new-instance v0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mCallback:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;

    const/16 v5, 0x1e

    invoke-direct {v0, v1, v4, v5}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;-><init>(Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;I)V

    invoke-virtual {v0, v2, v3}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->setDelay(J)Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    new-instance v0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mCallback:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;

    const/4 v4, 0x0

    invoke-direct {v0, v1, p0, v4}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;-><init>(Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;I)V

    invoke-virtual {v0, v2, v3}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->setDelay(J)Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addFingerLeaveAction(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;",
            ">;)V"
        }
    .end annotation

    .line 273
    new-instance v0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    sget-object v1, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;->ACQUIRED:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mCallback:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;

    const/4 v2, 0x6

    const/16 v3, 0x2714

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;-><init>(Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;II)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addFpAuthenticateAction(Ljava/util/List;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;",
            ">;Z)V"
        }
    .end annotation

    .line 278
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->addFpDefaultCaptureSuccessAction(Ljava/util/List;)V

    .line 280
    new-instance v0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    sget-object v1, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;->AUTHENTICATED:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mCallback:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;

    invoke-direct {v0, v1, v2, p2}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;-><init>(Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->addFingerLeaveAction(Ljava/util/List;)V

    return-void
.end method

.method public final addFpCaptureFailedAction(Ljava/util/List;II)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;",
            ">;II)V"
        }
    .end annotation

    .line 243
    new-instance v0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    sget-object v1, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;->ACQUIRED:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mCallback:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;

    const/4 v3, 0x6

    const/16 v4, 0x2711

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;-><init>(Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;II)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    if-eqz v0, :cond_20

    .line 247
    new-instance v2, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    sget-object v4, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;->TSP_FOD:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    iget-object v5, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mCallback:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;

    const/4 v6, 0x2

    invoke-direct {v2, v4, v5, v6}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;-><init>(Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;I)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    :cond_20
    new-instance v2, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mCallback:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;

    const/16 v5, 0x2712

    invoke-direct {v2, v1, v4, v3, v5}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;-><init>(Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;II)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    new-instance v2, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mCallback:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;

    const/16 v5, 0x2713

    invoke-direct {v2, v1, v4, v3, v5}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;-><init>(Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;II)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_47

    .line 258
    new-instance v0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    sget-object v2, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;->TSP_FOD:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mCallback:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;

    const/4 v5, 0x1

    invoke-direct {v0, v2, v4, v5}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;-><init>(Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    :cond_47
    new-instance v0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mCallback:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;

    const/16 v4, 0x2716

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;-><init>(Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;II)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    new-instance v0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mCallback:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;

    invoke-direct {v0, v1, v2, p2, p3}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;-><init>(Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;II)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    new-instance p2, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mCallback:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;

    const/16 p3, 0x2714

    invoke-direct {p2, v1, p0, v3, p3}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;-><init>(Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;II)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addFpDefaultCaptureSuccessAction(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;",
            ">;)V"
        }
    .end annotation

    .line 219
    new-instance v0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    sget-object v1, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;->ACQUIRED:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mCallback:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;

    const/4 v3, 0x6

    const/16 v4, 0x2711

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;-><init>(Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;II)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    if-eqz v0, :cond_20

    .line 223
    new-instance v2, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    sget-object v4, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;->TSP_FOD:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    iget-object v5, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mCallback:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;

    const/4 v6, 0x2

    invoke-direct {v2, v4, v5, v6}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;-><init>(Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;I)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    :cond_20
    new-instance v2, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mCallback:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;

    const/16 v5, 0x2712

    invoke-direct {v2, v1, v4, v3, v5}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;-><init>(Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;II)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    new-instance v2, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mCallback:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;

    const/16 v5, 0x2713

    invoke-direct {v2, v1, v4, v3, v5}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;-><init>(Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;II)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_47

    .line 233
    new-instance v0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    sget-object v2, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;->TSP_FOD:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mCallback:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;

    const/4 v5, 0x1

    invoke-direct {v0, v2, v4, v5}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;-><init>(Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    :cond_47
    new-instance v0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mCallback:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;

    const/16 v2, 0x2715

    invoke-direct {v0, v1, p0, v3, v2}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;-><init>(Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;II)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final getActionPath()Ljava/lang/String;
    .registers 2

    .line 286
    iget p0, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mBiometricType:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_8

    const-string p0, "/data/.biometric/fingerprint/tpa.json"

    return-object p0

    :cond_8
    const/16 v0, 0x8

    if-ne p0, v0, :cond_f

    const-string p0, "/data/.biometric/face/tpa.json"

    return-object p0

    :cond_f
    const-string p0, ""

    return-object p0
.end method

.method public getAuthActionList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;",
            ">;"
        }
    .end annotation

    .line 174
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mAuthActionList:Ljava/util/List;

    return-object p0
.end method

.method public getEnrollActionList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;",
            ">;"
        }
    .end annotation

    .line 170
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mEnrollActionList:Ljava/util/List;

    return-object p0
.end method

.method public initActions()V
    .registers 2

    .line 160
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mAuthActionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 161
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mEnrollActionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 162
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->initDefaultAction()V

    .line 163
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->getActionPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 165
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->makeActionFromJSONObject(Lorg/json/JSONObject;)V

    :cond_1a
    return-void
.end method

.method public final initDefaultAction()V
    .registers 1

    .line 179
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->addDefaultEnrollAction()V

    .line 181
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->addDefaultAuthenticateAction()V

    return-void
.end method

.method public final makeActionFromJSONObject(Lorg/json/JSONObject;)V
    .registers 15

    const-string v0, "delay"

    const-string v1, "actionList"

    .line 308
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 309
    new-instance v3, Landroid/util/Pair;

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mEnrollActionList:Ljava/util/List;

    const-string v5, "enroll"

    invoke-direct {v3, v5, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    new-instance v3, Landroid/util/Pair;

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mAuthActionList:Ljava/util/List;

    const-string v5, "authenticate"

    invoke-direct {v3, v5, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_25
    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 313
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "makeActionFromJSONObject: parse key = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SemTestHalHelper"

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :try_start_4c
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5d

    const-string/jumbo v3, "makeActionFromJSONObject: No Key, use default"

    .line 316
    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 319
    :cond_5d
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 320
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_72

    const-string/jumbo v3, "makeActionFromJSONObject: No actionList, use default"

    .line 321
    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 324
    :cond_72
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 325
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    .line 326
    iget-object v6, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    const/4 v6, 0x0

    :goto_82
    if-ge v6, v5, :cond_25

    .line 328
    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const/4 v8, 0x0

    const-string/jumbo v9, "type"

    .line 330
    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9
    :try_end_90
    .catch Lorg/json/JSONException; {:try_start_4c .. :try_end_90} :catch_115

    const-string/jumbo v10, "vendorCode"

    const/4 v11, 0x1

    if-eq v9, v11, :cond_e8

    const/4 v11, 0x2

    if-eq v9, v11, :cond_d7

    const/4 v11, 0x3

    if-eq v9, v11, :cond_c7

    const/4 v11, 0x4

    if-eq v9, v11, :cond_b3

    const/4 v10, 0x7

    if-eq v9, v10, :cond_a3

    goto :goto_fb

    .line 353
    :cond_a3
    :try_start_a3
    new-instance v8, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    sget-object v9, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;->TSP_FOD:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    iget-object v10, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mCallback:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;

    const-string v11, "TspEvent"

    .line 354
    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    invoke-direct {v8, v9, v10, v11}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;-><init>(Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;I)V

    goto :goto_fb

    .line 344
    :cond_b3
    new-instance v8, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    sget-object v9, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;->ERROR:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    iget-object v11, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mCallback:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;

    const-string v12, "errorCode"

    .line 345
    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 346
    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-direct {v8, v9, v11, v12, v10}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;-><init>(Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;II)V

    goto :goto_fb

    .line 340
    :cond_c7
    new-instance v8, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    sget-object v9, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;->AUTHENTICATED:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    iget-object v10, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mCallback:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;

    const-string v11, "Id"

    .line 341
    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    invoke-direct {v8, v9, v10, v11}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;-><init>(Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;I)V

    goto :goto_fb

    .line 336
    :cond_d7
    new-instance v8, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    sget-object v9, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;->ENROLL_RESULT:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    iget-object v10, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mCallback:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;

    const-string/jumbo v11, "remaining"

    .line 337
    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    invoke-direct {v8, v9, v10, v11}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;-><init>(Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;I)V

    goto :goto_fb

    .line 332
    :cond_e8
    new-instance v8, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    sget-object v9, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;->ACQUIRED:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    iget-object v11, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mCallback:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;

    const-string v12, "acquiredInfo"

    .line 333
    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-direct {v8, v9, v11, v12, v10}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;-><init>(Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;II)V

    :goto_fb
    if-eqz v8, :cond_111

    .line 358
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_10a

    .line 359
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->setDelay(J)Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    .line 361
    :cond_10a
    iget-object v7, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_111
    .catch Lorg/json/JSONException; {:try_start_a3 .. :try_end_111} :catch_115

    :cond_111
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_82

    :catch_115
    move-exception v3

    .line 365
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_25

    :cond_11b
    return-void
.end method
