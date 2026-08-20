.class public Lcom/android/server/sepunion/SemGoodCatchService$FeatureEvent;
.super Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;
.source "SemGoodCatchService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/SemGoodCatchService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FeatureEvent"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/SemGoodCatchService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/SemGoodCatchService;)V
    .registers 3

    .line 627
    iput-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureEvent;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    const-string v0, "FeatureEvent"

    .line 628
    invoke-direct {p0, p1, v0}, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;-><init>(Lcom/android/server/sepunion/SemGoodCatchService;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 2

    .line 660
    invoke-super {p0, p1}, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public reset()V
    .registers 2

    .line 654
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->off()V

    const/4 v0, 0x0

    .line 655
    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->setUri(Landroid/net/Uri;)V

    return-void
.end method

.method public update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .line 635
    invoke-static {}, Lcom/android/server/sepunion/SemGoodCatchService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "module"

    .line 638
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "function"

    .line 639
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "package"

    .line 640
    invoke-virtual {v0, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "time"

    .line 641
    invoke-virtual {v0, p1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "value"

    .line 642
    invoke-virtual {v0, p1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "message"

    .line 643
    invoke-virtual {v0, p1, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "extra"

    .line 644
    invoke-virtual {v0, p1, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    :try_start_4e
    iget-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureEvent;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    invoke-static {p1}, Lcom/android/server/sepunion/SemGoodCatchService;->-$$Nest$fgetmContentResolver(Lcom/android/server/sepunion/SemGoodCatchService;)Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureEvent;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    invoke-static {p0}, Lcom/android/server/sepunion/SemGoodCatchService;->-$$Nest$fgetmFeatureEvent(Lcom/android/server/sepunion/SemGoodCatchService;)Lcom/android/server/sepunion/SemGoodCatchService$FeatureEvent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->getUri()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_61} :catch_62

    goto :goto_7c

    :catch_62
    move-exception p0

    .line 649
    invoke-static {}, Lcom/android/server/sepunion/SemGoodCatchService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "insertGoodCatch error : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7c
    return-void
.end method
