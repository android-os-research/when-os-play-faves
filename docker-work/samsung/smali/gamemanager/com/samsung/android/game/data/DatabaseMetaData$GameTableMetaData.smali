.class public final Lcom/samsung/android/game/data/DatabaseMetaData$GameTableMetaData;
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
    name = "GameTableMetaData"
.end annotation


# static fields
.field public static final CATEGORY:Ljava/lang/String; = "category"

.field public static final PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field public static final TABLE_NAME:Ljava/lang/String; = "game"

.field public static final USER_ID:Ljava/lang/String; = "user_id"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
