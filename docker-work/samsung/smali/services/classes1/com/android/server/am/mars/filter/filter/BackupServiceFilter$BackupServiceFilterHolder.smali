.class public Lcom/android/server/am/mars/filter/filter/BackupServiceFilter$BackupServiceFilterHolder;
.super Ljava/lang/Object;
.source "BackupServiceFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/mars/filter/filter/BackupServiceFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BackupServiceFilterHolder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/server/am/mars/filter/filter/BackupServiceFilter;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/android/server/am/mars/filter/filter/BackupServiceFilter;
    .registers 1

    sget-object v0, Lcom/android/server/am/mars/filter/filter/BackupServiceFilter$BackupServiceFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/BackupServiceFilter;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 17
    new-instance v0, Lcom/android/server/am/mars/filter/filter/BackupServiceFilter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/mars/filter/filter/BackupServiceFilter;-><init>(Lcom/android/server/am/mars/filter/filter/BackupServiceFilter-IA;)V

    sput-object v0, Lcom/android/server/am/mars/filter/filter/BackupServiceFilter$BackupServiceFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/BackupServiceFilter;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
