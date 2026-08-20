.class public Lcom/samsung/android/server/audio/FoldStateHelper;
.super Ljava/lang/Object;
.source "FoldStateHelper.java"


# static fields
.field public static final FOLD_STATE_CLOSE:I = 0x0

.field public static final FOLD_STATE_HALF_OPEN:I = 0x2

.field public static final FOLD_STATE_OPEN:I = 0x3

.field public static final FOLD_STATE_TENT:I = 0x1

.field public static final TAG:Ljava/lang/String; = "AS.FoldStateHelper"

.field public static sInstance:Lcom/samsung/android/server/audio/FoldStateHelper;


# instance fields
.field public final mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

.field public mIsFoldedCache:Ljava/lang/Boolean;

.field public mIsTabledCache:Ljava/lang/Boolean;


# direct methods
.method public static synthetic $r8$lambda$XnXNw9janSsrfjCxQ7MjYMHh7EI(Lcom/samsung/android/server/audio/FoldStateHelper;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/audio/FoldStateHelper;->lambda$registerDeviceStateCallback$0(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-class v0, Landroid/hardware/devicestate/DeviceStateManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/devicestate/DeviceStateManager;

    iput-object p1, p0, Lcom/samsung/android/server/audio/FoldStateHelper;->mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/server/audio/FoldStateHelper;
    .registers 2

    .line 45
    sget-object v0, Lcom/samsung/android/server/audio/FoldStateHelper;->sInstance:Lcom/samsung/android/server/audio/FoldStateHelper;

    if-nez v0, :cond_b

    .line 46
    new-instance v0, Lcom/samsung/android/server/audio/FoldStateHelper;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/audio/FoldStateHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/server/audio/FoldStateHelper;->sInstance:Lcom/samsung/android/server/audio/FoldStateHelper;

    .line 48
    :cond_b
    sget-object p0, Lcom/samsung/android/server/audio/FoldStateHelper;->sInstance:Lcom/samsung/android/server/audio/FoldStateHelper;

    return-object p0
.end method

.method private synthetic lambda$registerDeviceStateCallback$0(I)V
    .registers 7

    .line 90
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/audio/FoldStateHelper;->validateState(I)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 91
    iget-object v0, p0, Lcom/samsung/android/server/audio/FoldStateHelper;->mIsFoldedCache:Ljava/lang/Boolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez p1, :cond_14

    move v3, v2

    goto :goto_15

    :cond_14
    move v3, v1

    :goto_15
    if-eq v0, v3, :cond_18

    goto :goto_1a

    :cond_18
    move v0, v1

    goto :goto_1b

    :cond_1a
    :goto_1a
    move v0, v2

    .line 92
    :goto_1b
    iget-object v3, p0, Lcom/samsung/android/server/audio/FoldStateHelper;->mIsTabledCache:Ljava/lang/Boolean;

    if-eqz v3, :cond_27

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x2

    if-ne v4, p1, :cond_27

    move v1, v2

    .line 93
    :cond_27
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/audio/FoldStateHelper;->setCache(I)V

    if-eqz v0, :cond_4d

    .line 95
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "l_hw_folder_state="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/audio/FoldStateHelper;->mIsFoldedCache:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_41

    const-string p0, "0"

    goto :goto_43

    :cond_41
    const-string p0, "1"

    :goto_43
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    :cond_4d
    return-void
.end method


# virtual methods
.method public isFolded()Z
    .registers 2

    .line 69
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/FoldStateHelper;->isStateCached()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 72
    :cond_8
    iget-object p0, p0, Lcom/samsung/android/server/audio/FoldStateHelper;->mIsFoldedCache:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isStateCached()Z
    .registers 2

    .line 59
    iget-object v0, p0, Lcom/samsung/android/server/audio/FoldStateHelper;->mIsFoldedCache:Ljava/lang/Boolean;

    if-eqz v0, :cond_a

    iget-object p0, p0, Lcom/samsung/android/server/audio/FoldStateHelper;->mIsTabledCache:Ljava/lang/Boolean;

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public isTableMode()Z
    .registers 2

    .line 82
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/FoldStateHelper;->isStateCached()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 85
    :cond_8
    iget-object p0, p0, Lcom/samsung/android/server/audio/FoldStateHelper;->mIsTabledCache:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final registerDeviceStateCallback()V
    .registers 4

    .line 89
    iget-object v0, p0, Lcom/samsung/android/server/audio/FoldStateHelper;->mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

    invoke-static {}, Lcom/samsung/android/server/audio/AudioExecutor;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/server/audio/FoldStateHelper$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/samsung/android/server/audio/FoldStateHelper$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/audio/FoldStateHelper;)V

    invoke-virtual {v0, v1, v2}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    return-void
.end method

.method public registerListener()V
    .registers 1

    .line 52
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/FoldStateHelper;->registerDeviceStateCallback()V

    return-void
.end method

.method public final setCache(I)V
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_6

    move v2, v0

    goto :goto_7

    :cond_6
    move v2, v1

    .line 111
    :goto_7
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/server/audio/FoldStateHelper;->mIsFoldedCache:Ljava/lang/Boolean;

    const/4 v2, 0x2

    if-ne v2, p1, :cond_11

    goto :goto_12

    :cond_11
    move v0, v1

    .line 112
    :goto_12
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/audio/FoldStateHelper;->mIsTabledCache:Ljava/lang/Boolean;

    return-void
.end method

.method public final validateState(I)Z
    .registers 2

    if-ltz p1, :cond_7

    const/4 p0, 0x3

    if-lt p0, p1, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method
