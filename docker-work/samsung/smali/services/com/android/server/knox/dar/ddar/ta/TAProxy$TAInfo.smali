.class public Lcom/android/server/knox/dar/ddar/ta/TAProxy$TAInfo;
.super Ljava/lang/Object;
.source "TAProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/knox/dar/ddar/ta/TAProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TAInfo"
.end annotation


# instance fields
.field public maxRecvRespSize:I

.field public maxSendCmdSize:I

.field public ta:Lcom/android/server/knox/dar/ddar/ta/TZNative;

.field public taId:I

.field public taProcessName:Ljava/lang/String;

.field public taRootName:Ljava/lang/String;

.field public taTechnology:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/knox/dar/ddar/ta/TAProxy$TAInfo-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/knox/dar/ddar/ta/TAProxy$TAInfo;-><init>()V

    return-void
.end method
