.class public Lcom/android/server/am/mars/filter/filter/HomeFilter$HomeFilterHolder;
.super Ljava/lang/Object;
.source "HomeFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/mars/filter/filter/HomeFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HomeFilterHolder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/server/am/mars/filter/filter/HomeFilter;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/android/server/am/mars/filter/filter/HomeFilter;
    .registers 1

    sget-object v0, Lcom/android/server/am/mars/filter/filter/HomeFilter$HomeFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/HomeFilter;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 15
    new-instance v0, Lcom/android/server/am/mars/filter/filter/HomeFilter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/mars/filter/filter/HomeFilter;-><init>(Lcom/android/server/am/mars/filter/filter/HomeFilter-IA;)V

    sput-object v0, Lcom/android/server/am/mars/filter/filter/HomeFilter$HomeFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/HomeFilter;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
