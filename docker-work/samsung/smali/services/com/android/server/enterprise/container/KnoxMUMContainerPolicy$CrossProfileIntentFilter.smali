.class public Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$CrossProfileIntentFilter;
.super Ljava/lang/Object;
.source "KnoxMUMContainerPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CrossProfileIntentFilter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$CrossProfileIntentFilter$Builder;
    }
.end annotation


# instance fields
.field public filter:Landroid/content/IntentFilter;

.field public final flags:I


# direct methods
.method public constructor <init>(Landroid/content/IntentFilter;I)V
    .registers 3

    .line 3705
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3706
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/IntentFilter;

    iput-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$CrossProfileIntentFilter;->filter:Landroid/content/IntentFilter;

    .line 3707
    iput p2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$CrossProfileIntentFilter;->flags:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/IntentFilter;ILcom/android/server/enterprise/container/KnoxMUMContainerPolicy$CrossProfileIntentFilter-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$CrossProfileIntentFilter;-><init>(Landroid/content/IntentFilter;I)V

    return-void
.end method
