.class public Lcom/android/server/am/mars/filter/filter/EdgeAppFilter$EdgeAppFilterHolder;
.super Ljava/lang/Object;
.source "EdgeAppFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EdgeAppFilterHolder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;
    .registers 1

    sget-object v0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter$EdgeAppFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 31
    new-instance v0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;-><init>(Lcom/android/server/am/mars/filter/filter/EdgeAppFilter-IA;)V

    sput-object v0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter$EdgeAppFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
