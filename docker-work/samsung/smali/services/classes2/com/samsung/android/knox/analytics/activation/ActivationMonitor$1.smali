.class public Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$1;
.super Ljava/lang/Object;
.source "ActivationMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->bootChecking()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;)V
    .registers 2

    .line 173
    iput-object p1, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$1;->this$0:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 175
    invoke-static {}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bootChecking() - run"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$1;->this$0:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->-$$Nest$fputmIsOnBootCheckings(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;Z)V

    .line 177
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$1;->this$0:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->-$$Nest$fgetmTriggers(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;)Ljava/util/BitSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    if-nez v0, :cond_20

    .line 178
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$1;->this$0:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->-$$Nest$mcheckDOOnBoot(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;)V

    .line 179
    :cond_20
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$1;->this$0:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->-$$Nest$fgetmTriggers(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;)Ljava/util/BitSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    if-nez v0, :cond_31

    .line 180
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$1;->this$0:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->-$$Nest$mcheckPOOnBoot(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;)V

    .line 181
    :cond_31
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$1;->this$0:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->-$$Nest$fgetmTriggers(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;)Ljava/util/BitSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    if-nez v0, :cond_42

    .line 182
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$1;->this$0:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->-$$Nest$mcheckKLMOnBoot(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;)V

    .line 183
    :cond_42
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$1;->this$0:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->-$$Nest$fgetmTriggers(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;)Ljava/util/BitSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    if-nez v0, :cond_53

    .line 184
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$1;->this$0:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->-$$Nest$mcheckKesOnBoot(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;)V

    .line 185
    :cond_53
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$1;->this$0:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->-$$Nest$fgetmTriggers(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;)Ljava/util/BitSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    if-nez v0, :cond_64

    .line 186
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$1;->this$0:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->-$$Nest$mcheckELMOnBoot(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;)V

    .line 187
    :cond_64
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$1;->this$0:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->-$$Nest$fgetmTriggers(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;)Ljava/util/BitSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    if-nez v0, :cond_75

    .line 188
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$1;->this$0:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->-$$Nest$mcheckB2COnBoot(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;)V

    .line 189
    :cond_75
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$1;->this$0:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->-$$Nest$mcheckConditionsToStart(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;)V

    .line 190
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$1;->this$0:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->-$$Nest$fputmIsOnBootCheckings(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;Z)V

    .line 191
    invoke-static {}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "bootChecking() - finished"

    invoke-static {p0, v0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
