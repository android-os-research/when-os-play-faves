.class public Lcom/android/server/IntentResolver$1;
.super Ljava/lang/Object;
.source "IntentResolver.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/IntentResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 888
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 890
    check-cast p1, Landroid/content/IntentFilter;

    invoke-virtual {p1}, Landroid/content/IntentFilter;->getPriority()I

    move-result p0

    .line 891
    check-cast p2, Landroid/content/IntentFilter;

    invoke-virtual {p2}, Landroid/content/IntentFilter;->getPriority()I

    move-result p1

    if-le p0, p1, :cond_10

    const/4 p0, -0x1

    goto :goto_15

    :cond_10
    if-ge p0, p1, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method
