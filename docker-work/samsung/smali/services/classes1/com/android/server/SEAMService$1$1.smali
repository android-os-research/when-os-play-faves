.class public Lcom/android/server/SEAMService$1$1;
.super Ljava/lang/Object;
.source "SEAMService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/SEAMService$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/SEAMService$1;


# direct methods
.method public constructor <init>(Lcom/android/server/SEAMService$1;)V
    .registers 2

    .line 71
    iput-object p1, p0, Lcom/android/server/SEAMService$1$1;->this$1:Lcom/android/server/SEAMService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 73
    invoke-static {}, Lcom/android/server/ServiceKeeper;->getServiceKeeper()Lcom/android/server/ServiceKeeper;

    .line 74
    invoke-static {}, Lcom/android/server/ServiceKeeper;->authorizeLoadProcedure()Z

    move-result p0

    .line 75
    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v0, :cond_25

    .line 76
    invoke-static {}, Lcom/android/server/SEAMService;->-$$Nest$sfgetmSKLog()Lcom/android/server/SKLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service Keeper Initialized = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SEAMService"

    invoke-virtual {v0, v1, p0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_25
    return-void
.end method
