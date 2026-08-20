.class public Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter$WidgetPackages;
.super Ljava/lang/Object;
.source "WidgetPkgFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WidgetPackages"
.end annotation


# instance fields
.field public mMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;


# direct methods
.method public constructor <init>(Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;)V
    .registers 2

    .line 146
    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter$WidgetPackages;->this$0:Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter$WidgetPackages;->mMap:Landroid/util/ArrayMap;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter$WidgetPackages-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter$WidgetPackages;-><init>(Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;)V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .registers 3

    .line 154
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter$WidgetPackages;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_f

    const/4 v0, 0x0

    .line 156
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 158
    :cond_f
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter$WidgetPackages;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public contains(Ljava/lang/String;)Z
    .registers 2

    .line 150
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter$WidgetPackages;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public remove(Ljava/lang/String;)V
    .registers 4

    .line 162
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter$WidgetPackages;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_b

    return-void

    .line 167
    :cond_b
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gtz v1, :cond_21

    .line 168
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter$WidgetPackages;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_26

    .line 170
    :cond_21
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter$WidgetPackages;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_26
    return-void
.end method
