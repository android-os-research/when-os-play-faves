.class public final Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;
.super Ljava/lang/Object;
.source "DefaultCrossProfileIntentFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/DefaultCrossProfileIntentFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public mDirection:I

.field public mFilter:Lcom/android/server/pm/WatchedIntentFilter;

.field public mFlags:I

.field public mLetsPersonalDataIntoProfile:Z


# direct methods
.method public constructor <init>(IIZ)V
    .registers 5

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->mFilter:Lcom/android/server/pm/WatchedIntentFilter;

    .line 84
    iput p1, p0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->mDirection:I

    .line 85
    iput p2, p0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->mFlags:I

    .line 86
    iput-boolean p3, p0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->mLetsPersonalDataIntoProfile:Z

    return-void
.end method


# virtual methods
.method public addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;
    .registers 3

    .line 90
    iget-object v0, p0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->mFilter:Lcom/android/server/pm/WatchedIntentFilter;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    return-object p0
.end method

.method public addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;
    .registers 3

    .line 95
    iget-object v0, p0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->mFilter:Lcom/android/server/pm/WatchedIntentFilter;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    return-object p0
.end method

.method public addDataScheme(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;
    .registers 3

    .line 109
    iget-object v0, p0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->mFilter:Lcom/android/server/pm/WatchedIntentFilter;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/WatchedIntentFilter;->addDataScheme(Ljava/lang/String;)V

    return-object p0
.end method

.method public addDataType(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;
    .registers 3

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->mFilter:Lcom/android/server/pm/WatchedIntentFilter;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/WatchedIntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_5} :catch_5

    :catch_5
    return-object p0
.end method

.method public build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;
    .registers 8

    .line 114
    new-instance v6, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    iget-object v1, p0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->mFilter:Lcom/android/server/pm/WatchedIntentFilter;

    iget v2, p0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->mFlags:I

    iget v3, p0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->mDirection:I

    iget-boolean v4, p0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->mLetsPersonalDataIntoProfile:Z

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;IIZLcom/android/server/pm/DefaultCrossProfileIntentFilter-IA;)V

    return-object v6
.end method
