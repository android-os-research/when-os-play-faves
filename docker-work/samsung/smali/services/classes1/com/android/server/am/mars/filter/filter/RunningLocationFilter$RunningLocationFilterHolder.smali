.class public Lcom/android/server/am/mars/filter/filter/RunningLocationFilter$RunningLocationFilterHolder;
.super Ljava/lang/Object;
.source "RunningLocationFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/mars/filter/filter/RunningLocationFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RunningLocationFilterHolder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/server/am/mars/filter/filter/RunningLocationFilter;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/android/server/am/mars/filter/filter/RunningLocationFilter;
    .registers 1

    sget-object v0, Lcom/android/server/am/mars/filter/filter/RunningLocationFilter$RunningLocationFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/RunningLocationFilter;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 21
    new-instance v0, Lcom/android/server/am/mars/filter/filter/RunningLocationFilter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/mars/filter/filter/RunningLocationFilter;-><init>(Lcom/android/server/am/mars/filter/filter/RunningLocationFilter-IA;)V

    sput-object v0, Lcom/android/server/am/mars/filter/filter/RunningLocationFilter$RunningLocationFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/RunningLocationFilter;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
