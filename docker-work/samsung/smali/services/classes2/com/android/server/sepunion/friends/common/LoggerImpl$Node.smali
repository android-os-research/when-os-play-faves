.class public Lcom/android/server/sepunion/friends/common/LoggerImpl$Node;
.super Ljava/lang/Object;
.source "LoggerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/friends/common/LoggerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Node"
.end annotation


# instance fields
.field public msg:Ljava/lang/String;

.field public timeStamp:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/sepunion/friends/common/LoggerImpl$Node;->timeStamp:J

    .line 92
    iput-object p1, p0, Lcom/android/server/sepunion/friends/common/LoggerImpl$Node;->msg:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .registers 4

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/android/server/sepunion/friends/common/LoggerImpl$Node;->msg:Ljava/lang/String;

    .line 97
    iput-wide p2, p0, Lcom/android/server/sepunion/friends/common/LoggerImpl$Node;->timeStamp:J

    return-void
.end method
