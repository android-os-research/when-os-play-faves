.class public Lcom/android/server/am/mars/filter/FilterFactory$FilterFactoryHolder;
.super Ljava/lang/Object;
.source "FilterFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/mars/filter/FilterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FilterFactoryHolder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/server/am/mars/filter/FilterFactory;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/android/server/am/mars/filter/FilterFactory;
    .registers 1

    sget-object v0, Lcom/android/server/am/mars/filter/FilterFactory$FilterFactoryHolder;->INSTANCE:Lcom/android/server/am/mars/filter/FilterFactory;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 47
    new-instance v0, Lcom/android/server/am/mars/filter/FilterFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;-><init>(Lcom/android/server/am/mars/filter/FilterFactory-IA;)V

    sput-object v0, Lcom/android/server/am/mars/filter/FilterFactory$FilterFactoryHolder;->INSTANCE:Lcom/android/server/am/mars/filter/FilterFactory;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
