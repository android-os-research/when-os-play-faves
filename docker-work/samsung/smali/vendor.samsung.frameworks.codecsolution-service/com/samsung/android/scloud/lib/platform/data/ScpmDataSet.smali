.class public Lcom/samsung/android/scloud/lib/platform/data/ScpmDataSet;
.super Ljava/lang/Object;
.source "ScpmDataSet.java"


# instance fields
.field public final rcode:I

.field public final result:I

.field public final rmsg:Ljava/lang/String;

.field public final token:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "result"    # I
    .param p2, "rcode"    # I
    .param p3, "rmsg"    # Ljava/lang/String;
    .param p4, "token"    # Ljava/lang/String;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/samsung/android/scloud/lib/platform/data/ScpmDataSet;->result:I

    .line 33
    iput p2, p0, Lcom/samsung/android/scloud/lib/platform/data/ScpmDataSet;->rcode:I

    .line 34
    iput-object p3, p0, Lcom/samsung/android/scloud/lib/platform/data/ScpmDataSet;->rmsg:Ljava/lang/String;

    .line 35
    iput-object p4, p0, Lcom/samsung/android/scloud/lib/platform/data/ScpmDataSet;->token:Ljava/lang/String;

    .line 36
    return-void
.end method
