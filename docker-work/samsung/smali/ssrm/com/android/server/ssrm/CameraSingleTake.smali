.class public Lcom/android/server/ssrm/CameraSingleTake;
.super Ljava/lang/Object;
.source "CameraSingleTake.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/CameraSingleTake$SingleTakeStatusReceiver;
    }
.end annotation


# static fields
.field private static final SINGLE_TAKE_NAME:Ljava/lang/String; = "com.samsung.android.singletake.service"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSingleTakeStatus:Lcom/android/server/ssrm/CameraSingleTake$SingleTakeStatusReceiver;


# direct methods
.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/ssrm/CameraSingleTake;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 14
    const-class v0, Lcom/android/server/ssrm/CameraSingleTake;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/CameraSingleTake;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/android/server/ssrm/CameraSingleTake;->mContext:Landroid/content/Context;

    .line 24
    new-instance v0, Lcom/android/server/ssrm/CameraSingleTake$SingleTakeStatusReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/ssrm/CameraSingleTake$SingleTakeStatusReceiver;-><init>(Lcom/android/server/ssrm/CameraSingleTake;)V

    iput-object v0, p0, Lcom/android/server/ssrm/CameraSingleTake;->mSingleTakeStatus:Lcom/android/server/ssrm/CameraSingleTake$SingleTakeStatusReceiver;

    .line 25
    iget-object v0, p0, Lcom/android/server/ssrm/CameraSingleTake;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/ssrm/common/EventManager;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/common/EventManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ssrm/CameraSingleTake;->mSingleTakeStatus:Lcom/android/server/ssrm/CameraSingleTake$SingleTakeStatusReceiver;

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/common/EventManager;->registerReceiver(Lcom/android/server/ssrm/common/IEReceiver;)Lcom/android/server/ssrm/common/IEvent;

    .line 26
    return-void
.end method


# virtual methods
.method update(Z)V
    .registers 6
    .param p1, "on"    # Z

    .line 30
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ssrm/CameraSingleTake;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.singletake.service"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->getPidFromProcessName(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 31
    .local v0, "pid":I
    if-eqz p1, :cond_29

    .line 32
    if-lez v0, :cond_10

    .line 33
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/Process;->setProcessGroup(II)V

    .line 35
    :cond_10
    sget-object v1, Lcom/android/server/ssrm/CameraSingleTake;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SingleTake Start "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_47

    .line 37
    :cond_29
    if-lez v0, :cond_2f

    .line 38
    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/Process;->setProcessGroup(II)V

    .line 40
    :cond_2f
    sget-object v1, Lcom/android/server/ssrm/CameraSingleTake;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SingleTake Stop "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_47} :catch_48

    .line 44
    .end local v0    # "pid":I
    :goto_47
    goto :goto_61

    .line 42
    :catch_48
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/ssrm/CameraSingleTake;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception during update "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_61
    return-void
.end method
