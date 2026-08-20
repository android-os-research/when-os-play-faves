.class public Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;
.super Ljava/lang/Object;
.source "IntegritySeUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntegritySeResult"
.end annotation


# instance fields
.field public enabled:Z

.field public enabledAdminReceiver:Z

.field public enabledAlarmService:Z

.field public enabledKGProvider:Z

.field public enabledKgEventService:Z

.field public enabledSelfUpdateReceiver:Z

.field public enabledSystemIntentReceiver:Z

.field public isOk:Z

.field public validSignature:Z

.field public validVersion:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->isOk:Z

    .line 26
    iput-boolean v0, p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->validSignature:Z

    .line 27
    iput-boolean v0, p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->enabled:Z

    .line 28
    iput-boolean v0, p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->validVersion:Z

    .line 30
    iput-boolean v0, p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->enabledAdminReceiver:Z

    .line 31
    iput-boolean v0, p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->enabledSystemIntentReceiver:Z

    .line 32
    iput-boolean v0, p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->enabledSelfUpdateReceiver:Z

    .line 34
    iput-boolean v0, p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->enabledKgEventService:Z

    .line 35
    iput-boolean v0, p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->enabledAlarmService:Z

    .line 36
    iput-boolean v0, p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->enabledKGProvider:Z

    return-void
.end method
