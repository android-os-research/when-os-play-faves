.class public final Lcom/samsung/android/game/data/DatabaseMetaData;
.super Ljava/lang/Object;
.source "DatabaseMetaData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/game/data/DatabaseMetaData$LogTableMetaData;,
        Lcom/samsung/android/game/data/DatabaseMetaData$GameTableMetaData;
    }
.end annotation


# static fields
.field public static final DATABASE_NAME:Ljava/lang/String; = "gamemanager.db"

.field public static final DATABASE_VERSION:I = 0xe


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
