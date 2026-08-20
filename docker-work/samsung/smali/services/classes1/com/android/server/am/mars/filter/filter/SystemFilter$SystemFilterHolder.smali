.class public Lcom/android/server/am/mars/filter/filter/SystemFilter$SystemFilterHolder;
.super Ljava/lang/Object;
.source "SystemFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/mars/filter/filter/SystemFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SystemFilterHolder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/server/am/mars/filter/filter/SystemFilter;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/android/server/am/mars/filter/filter/SystemFilter;
    .registers 1

    sget-object v0, Lcom/android/server/am/mars/filter/filter/SystemFilter$SystemFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/SystemFilter;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 15
    new-instance v0, Lcom/android/server/am/mars/filter/filter/SystemFilter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/mars/filter/filter/SystemFilter;-><init>(Lcom/android/server/am/mars/filter/filter/SystemFilter-IA;)V

    sput-object v0, Lcom/android/server/am/mars/filter/filter/SystemFilter$SystemFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/SystemFilter;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
