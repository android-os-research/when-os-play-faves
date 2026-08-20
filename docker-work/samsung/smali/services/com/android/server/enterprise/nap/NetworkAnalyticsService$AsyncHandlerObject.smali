.class public Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;
.super Ljava/lang/Object;
.source "NetworkAnalyticsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/nap/NetworkAnalyticsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AsyncHandlerObject"
.end annotation


# instance fields
.field public callback:Lcom/samsung/android/knox/net/nap/IStatusCallback;

.field public packageName:Ljava/lang/String;

.field public profileName:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

.field public userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;)V
    .registers 2

    .line 1655
    iput-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public AsyncHandlerObject()V
    .registers 1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method
