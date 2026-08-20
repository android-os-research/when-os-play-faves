.class public Lcom/sec/vsim/ericssonnsds/data/ResponseGetConsumerProfile$TmoIdProfile;
.super Ljava/lang/Object;
.source "ResponseGetConsumerProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/vsim/ericssonnsds/data/ResponseGetConsumerProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TmoIdProfile"
.end annotation


# instance fields
.field public email:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/vsim/ericssonnsds/data/ResponseGetConsumerProfile;


# direct methods
.method public constructor <init>(Lcom/sec/vsim/ericssonnsds/data/ResponseGetConsumerProfile;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sec/vsim/ericssonnsds/data/ResponseGetConsumerProfile;

    .line 7
    iput-object p1, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseGetConsumerProfile$TmoIdProfile;->this$0:Lcom/sec/vsim/ericssonnsds/data/ResponseGetConsumerProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
