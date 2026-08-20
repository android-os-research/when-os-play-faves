.class public Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;
.super Ljava/lang/Object;
.source "SemTwtAiEngineInterfaces.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "algOutput"
.end annotation


# instance fields
.field public callPeriod:I

.field public intval:I

.field public mTbufThdFlag:Z

.field public mTbufThreshold:I

.field public needSessionRenewal:Z

.field public overflowThd:I

.field public sp:I

.field final synthetic this$0:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

.field public windowSize:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;)V
    .registers 4

    .line 156
    iput-object p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->this$0:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 157
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->needSessionRenewal:Z

    const/16 v0, 0x5000

    .line 158
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->intval:I

    const/16 v0, 0x2800

    .line 159
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->sp:I

    const/16 v0, 0x834

    .line 160
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->overflowThd:I

    const/16 v1, 0xbea

    .line 161
    iput v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->callPeriod:I

    const/16 v1, 0x32

    .line 162
    iput v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->windowSize:I

    .line 163
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->mTbufThdFlag:Z

    .line 164
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->mTbufThreshold:I

    return-void
.end method
