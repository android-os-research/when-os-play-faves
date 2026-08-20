.class public Lcom/android/server/am/mars/filter/filter/AppCastFilter$AppCastFilterHolder;
.super Ljava/lang/Object;
.source "AppCastFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/mars/filter/filter/AppCastFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppCastFilterHolder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/server/am/mars/filter/filter/AppCastFilter;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/android/server/am/mars/filter/filter/AppCastFilter;
    .registers 1

    sget-object v0, Lcom/android/server/am/mars/filter/filter/AppCastFilter$AppCastFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/AppCastFilter;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 30
    new-instance v0, Lcom/android/server/am/mars/filter/filter/AppCastFilter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/mars/filter/filter/AppCastFilter;-><init>(Lcom/android/server/am/mars/filter/filter/AppCastFilter-IA;)V

    sput-object v0, Lcom/android/server/am/mars/filter/filter/AppCastFilter$AppCastFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/AppCastFilter;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
