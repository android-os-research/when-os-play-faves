.class public abstract Lcom/android/internal/telephony/cat/CatBIPConnection;
.super Ljava/lang/Object;
.source "CatBIPConnection.java"


# instance fields
.field blacklist bufferSize:I

.field blacklist channelId:I

.field blacklist linkStateCause:B

.field public blacklist mBuffsizeModified:Z

.field blacklist mCatBIPManager:Lcom/android/internal/telephony/cat/CatBIPManager;

.field blacklist uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;


# direct methods
.method public constructor blacklist <init>(ILcom/android/internal/telephony/cat/TransportLevel;Lcom/android/internal/telephony/cat/CatBIPManager;)V
    .registers 6

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/16 v1, 0x5dc

    if-le p1, v1, :cond_d

    const/4 p1, 0x1

    .line 58
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/CatBIPConnection;->mBuffsizeModified:Z

    move p1, v1

    goto :goto_f

    .line 60
    :cond_d
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/CatBIPConnection;->mBuffsizeModified:Z

    .line 62
    :goto_f
    iput p1, p0, Lcom/android/internal/telephony/cat/CatBIPConnection;->bufferSize:I

    .line 63
    iput-object p2, p0, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    .line 64
    iput-byte v0, p0, Lcom/android/internal/telephony/cat/CatBIPConnection;->linkStateCause:B

    .line 65
    iput-object p3, p0, Lcom/android/internal/telephony/cat/CatBIPConnection;->mCatBIPManager:Lcom/android/internal/telephony/cat/CatBIPManager;

    return-void
.end method


# virtual methods
.method public abstract blacklist terminateStreams()V
.end method
