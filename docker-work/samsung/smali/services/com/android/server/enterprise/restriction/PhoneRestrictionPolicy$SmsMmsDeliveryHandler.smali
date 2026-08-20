.class public Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;
.super Landroid/os/Handler;
.source "PhoneRestrictionPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SmsMmsDeliveryHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)V
    .registers 2

    .line 2372
    iput-object p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;->this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;-><init>(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 2375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Message received - msg "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhoneRestrictionPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2377
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2379
    new-instance v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler$1;-><init>(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;I)V

    .line 2398
    new-instance p0, Ljava/lang/Thread;

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method
