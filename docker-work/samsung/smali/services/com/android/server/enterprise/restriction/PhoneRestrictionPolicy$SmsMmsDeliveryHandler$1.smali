.class public Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler$1;
.super Ljava/lang/Object;
.source "PhoneRestrictionPolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;

.field public final synthetic val$msgType:I


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;I)V
    .registers 3

    .line 2379
    iput-object p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler$1;->this$1:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;

    iput p2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler$1;->val$msgType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 2381
    iget v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler$1;->val$msgType:I

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1b

    const/4 v3, 0x2

    if-eq v0, v3, :cond_c

    goto :goto_2a

    .line 2389
    :cond_c
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler$1;->this$1:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;

    iget-object v0, v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;->this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    invoke-static {v0, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->-$$Nest$mdeliveryBlockedMsgs(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;I)V

    .line 2390
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler$1;->this$1:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;

    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;->this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    invoke-static {p0, v2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->-$$Nest$mdeliveryBlockedMsgs(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;I)V

    goto :goto_2a

    .line 2386
    :cond_1b
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler$1;->this$1:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;

    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;->this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    invoke-static {p0, v2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->-$$Nest$mdeliveryBlockedMsgs(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;I)V

    goto :goto_2a

    .line 2383
    :cond_23
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler$1;->this$1:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;

    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;->this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    invoke-static {p0, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->-$$Nest$mdeliveryBlockedMsgs(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;I)V

    :goto_2a
    return-void
.end method
