.class Lcom/sec/vsim/util/GeolocationUpdateFlow$1;
.super Ljava/lang/Object;
.source "GeolocationUpdateFlow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/vsim/util/GeolocationUpdateFlow;->startGeolocationUpdate(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/vsim/util/GeolocationUpdateFlow;

.field final synthetic val$accuracy:I

.field final synthetic val$provider:I

.field final synthetic val$updateTime:I


# direct methods
.method constructor <init>(Lcom/sec/vsim/util/GeolocationUpdateFlow;III)V
    .registers 5
    .param p1, "this$0"    # Lcom/sec/vsim/util/GeolocationUpdateFlow;

    .line 162
    iput-object p1, p0, Lcom/sec/vsim/util/GeolocationUpdateFlow$1;->this$0:Lcom/sec/vsim/util/GeolocationUpdateFlow;

    iput p2, p0, Lcom/sec/vsim/util/GeolocationUpdateFlow$1;->val$provider:I

    iput p3, p0, Lcom/sec/vsim/util/GeolocationUpdateFlow$1;->val$updateTime:I

    iput p4, p0, Lcom/sec/vsim/util/GeolocationUpdateFlow$1;->val$accuracy:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 165
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 166
    iget-object v0, p0, Lcom/sec/vsim/util/GeolocationUpdateFlow$1;->this$0:Lcom/sec/vsim/util/GeolocationUpdateFlow;

    invoke-static {v0}, Lcom/sec/vsim/util/GeolocationUpdateFlow;->-$$Nest$mgetUserLocationSettings(Lcom/sec/vsim/util/GeolocationUpdateFlow;)V

    .line 167
    iget-object v0, p0, Lcom/sec/vsim/util/GeolocationUpdateFlow$1;->this$0:Lcom/sec/vsim/util/GeolocationUpdateFlow;

    iget v1, p0, Lcom/sec/vsim/util/GeolocationUpdateFlow$1;->val$provider:I

    invoke-static {v0, v1}, Lcom/sec/vsim/util/GeolocationUpdateFlow;->-$$Nest$menforceLocationSettings(Lcom/sec/vsim/util/GeolocationUpdateFlow;I)V

    .line 168
    iget-object v0, p0, Lcom/sec/vsim/util/GeolocationUpdateFlow$1;->this$0:Lcom/sec/vsim/util/GeolocationUpdateFlow;

    iget v1, p0, Lcom/sec/vsim/util/GeolocationUpdateFlow$1;->val$updateTime:I

    iget v2, p0, Lcom/sec/vsim/util/GeolocationUpdateFlow$1;->val$accuracy:I

    iget v3, p0, Lcom/sec/vsim/util/GeolocationUpdateFlow$1;->val$provider:I

    invoke-static {v0, v1, v2, v3}, Lcom/sec/vsim/util/GeolocationUpdateFlow;->-$$Nest$mrequestLocationUpdates(Lcom/sec/vsim/util/GeolocationUpdateFlow;III)V

    .line 169
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 170
    return-void
.end method
