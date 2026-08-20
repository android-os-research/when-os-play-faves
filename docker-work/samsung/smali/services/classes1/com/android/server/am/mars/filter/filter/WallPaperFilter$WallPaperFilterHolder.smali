.class public Lcom/android/server/am/mars/filter/filter/WallPaperFilter$WallPaperFilterHolder;
.super Ljava/lang/Object;
.source "WallPaperFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/mars/filter/filter/WallPaperFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WallPaperFilterHolder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/server/am/mars/filter/filter/WallPaperFilter;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/android/server/am/mars/filter/filter/WallPaperFilter;
    .registers 1

    sget-object v0, Lcom/android/server/am/mars/filter/filter/WallPaperFilter$WallPaperFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/WallPaperFilter;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 22
    new-instance v0, Lcom/android/server/am/mars/filter/filter/WallPaperFilter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/mars/filter/filter/WallPaperFilter;-><init>(Lcom/android/server/am/mars/filter/filter/WallPaperFilter-IA;)V

    sput-object v0, Lcom/android/server/am/mars/filter/filter/WallPaperFilter$WallPaperFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/WallPaperFilter;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
