.class public Lcom/android/server/connectivity/NetdEventListenerService$DnsResultParams;
.super Ljava/lang/Object;
.source "NetdEventListenerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetdEventListenerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DnsResultParams"
.end annotation


# instance fields
.field public final mHostname:Ljava/lang/String;

.field public final mNetId:I

.field public final mReturnCode:I

.field public final mUid:I


# direct methods
.method public constructor <init>(IILjava/lang/String;I)V
    .registers 5

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    iput p1, p0, Lcom/android/server/connectivity/NetdEventListenerService$DnsResultParams;->mNetId:I

    .line 279
    iput p2, p0, Lcom/android/server/connectivity/NetdEventListenerService$DnsResultParams;->mReturnCode:I

    .line 280
    iput-object p3, p0, Lcom/android/server/connectivity/NetdEventListenerService$DnsResultParams;->mHostname:Ljava/lang/String;

    .line 281
    iput p4, p0, Lcom/android/server/connectivity/NetdEventListenerService$DnsResultParams;->mUid:I

    return-void
.end method
