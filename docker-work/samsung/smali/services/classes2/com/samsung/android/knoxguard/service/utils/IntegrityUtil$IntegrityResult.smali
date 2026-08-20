.class public Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil$IntegrityResult;
.super Ljava/lang/Object;
.source "IntegrityUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntegrityResult"
.end annotation


# instance fields
.field public enabled:Z

.field public enabledAdminReceiver:Z

.field public enabledAlarmService:Z

.field public enabledKGProvider:Z

.field public enabledKgIntentService:Z

.field public enabledSystemIntentReceiver:Z

.field public enabledSystemIntentReceiverService:Z

.field public isOk:Z

.field public validSignature:Z

.field public validVersion:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil$IntegrityResult;->isOk:Z

    .line 24
    iput-boolean v0, p0, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil$IntegrityResult;->validSignature:Z

    .line 25
    iput-boolean v0, p0, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil$IntegrityResult;->enabled:Z

    .line 26
    iput-boolean v0, p0, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil$IntegrityResult;->validVersion:Z

    .line 28
    iput-boolean v0, p0, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil$IntegrityResult;->enabledAdminReceiver:Z

    .line 29
    iput-boolean v0, p0, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil$IntegrityResult;->enabledSystemIntentReceiver:Z

    .line 30
    iput-boolean v0, p0, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil$IntegrityResult;->enabledSystemIntentReceiverService:Z

    .line 32
    iput-boolean v0, p0, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil$IntegrityResult;->enabledKgIntentService:Z

    .line 33
    iput-boolean v0, p0, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil$IntegrityResult;->enabledAlarmService:Z

    .line 34
    iput-boolean v0, p0, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil$IntegrityResult;->enabledKGProvider:Z

    return-void
.end method
