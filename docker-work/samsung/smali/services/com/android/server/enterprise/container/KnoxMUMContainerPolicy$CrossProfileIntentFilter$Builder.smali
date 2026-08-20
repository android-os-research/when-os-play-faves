.class public final Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$CrossProfileIntentFilter$Builder;
.super Ljava/lang/Object;
.source "KnoxMUMContainerPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$CrossProfileIntentFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public mFilter:Landroid/content/IntentFilter;

.field public mFlags:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 3714
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3711
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$CrossProfileIntentFilter$Builder;->mFilter:Landroid/content/IntentFilter;

    .line 3715
    iput p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$CrossProfileIntentFilter$Builder;->mFlags:I

    return-void
.end method


# virtual methods
.method public addAction(Ljava/lang/String;)Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$CrossProfileIntentFilter$Builder;
    .registers 3

    .line 3719
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$CrossProfileIntentFilter$Builder;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object p0
.end method

.method public addDataScheme(Ljava/lang/String;)Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$CrossProfileIntentFilter$Builder;
    .registers 3

    .line 3733
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$CrossProfileIntentFilter$Builder;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    return-object p0
.end method

.method public addDataType(Ljava/lang/String;)Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$CrossProfileIntentFilter$Builder;
    .registers 5

    .line 3725
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$CrossProfileIntentFilter$Builder;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_1f

    :catch_6
    move-exception p1

    .line 3727
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MalformedMimeTypeException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1f
    return-object p0
.end method

.method public build()Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$CrossProfileIntentFilter;
    .registers 4

    .line 3738
    new-instance v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$CrossProfileIntentFilter;

    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$CrossProfileIntentFilter$Builder;->mFilter:Landroid/content/IntentFilter;

    iget p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$CrossProfileIntentFilter$Builder;->mFlags:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$CrossProfileIntentFilter;-><init>(Landroid/content/IntentFilter;ILcom/android/server/enterprise/container/KnoxMUMContainerPolicy$CrossProfileIntentFilter-IA;)V

    return-object v0
.end method
