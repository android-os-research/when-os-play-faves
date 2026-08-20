.class public Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter$OngoingNotiPackageFilterHolder;
.super Ljava/lang/Object;
.source "OngoingNotiPackageFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OngoingNotiPackageFilterHolder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;
    .registers 1

    sget-object v0, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter$OngoingNotiPackageFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 28
    new-instance v0, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;-><init>(Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter-IA;)V

    sput-object v0, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter$OngoingNotiPackageFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
