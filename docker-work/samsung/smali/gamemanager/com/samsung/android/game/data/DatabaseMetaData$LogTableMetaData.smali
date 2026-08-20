.class public final Lcom/samsung/android/game/data/DatabaseMetaData$LogTableMetaData;
.super Ljava/lang/Object;
.source "DatabaseMetaData.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/game/data/DatabaseMetaData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LogTableMetaData"
.end annotation


# static fields
.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "ASC"

.field public static final MSG:Ljava/lang/String; = "msg"

.field public static final TABLE_NAME:Ljava/lang/String; = "log"

.field public static final TABLE_ROW_MAX:I = 0x1f4

.field public static final TAG:Ljava/lang/String; = "tag"

.field public static final TIME:Ljava/lang/String; = "time"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
