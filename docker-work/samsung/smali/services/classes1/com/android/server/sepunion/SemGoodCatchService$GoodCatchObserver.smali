.class public Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchObserver;
.super Landroid/database/ContentObserver;
.source "SemGoodCatchService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/SemGoodCatchService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GoodCatchObserver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/SemGoodCatchService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/SemGoodCatchService;)V
    .registers 6

    .line 419
    iput-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchObserver;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    .line 420
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 422
    invoke-static {p1}, Lcom/android/server/sepunion/SemGoodCatchService;->-$$Nest$fgetmContentResolver(Lcom/android/server/sepunion/SemGoodCatchService;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/sepunion/SemGoodCatchService;->-$$Nest$fgetmFeatureSetting(Lcom/android/server/sepunion/SemGoodCatchService;)Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->getUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 423
    invoke-static {}, Lcom/android/server/sepunion/SemGoodCatchService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mContentResolver.registerContentObserver(mFeatureSetting.getUri() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/sepunion/SemGoodCatchService;->-$$Nest$fgetmFeatureSetting(Lcom/android/server/sepunion/SemGoodCatchService;)Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/sepunion/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchObserver;->update()V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 5

    .line 429
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 430
    invoke-static {}, Lcom/android/server/sepunion/SemGoodCatchService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GoodCatchObserver.onChange(boolean selfChange : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/sepunion/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchObserver;->update()V

    return-void
.end method

.method public final update()V
    .registers 7

    .line 435
    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchObserver;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    invoke-static {p0}, Lcom/android/server/sepunion/SemGoodCatchService;->-$$Nest$fgetmGoodCatchHandler(Lcom/android/server/sepunion/SemGoodCatchService;)Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/server/sepunion/SemGoodCatchService;->-$$Nest$smsendMsg(Landroid/os/Handler;IIILjava/lang/Object;I)V

    return-void
.end method
