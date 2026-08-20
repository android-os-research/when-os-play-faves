.class public final Lcom/sec/ims/settings/ImsSettings$ProfileIdTable;
.super Ljava/lang/Object;
.source "ImsSettings.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/settings/ImsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProfileIdTable"
.end annotation


# static fields
.field public static final MCCMNC:Ljava/lang/String; = "mccmnc"

.field public static final MNO_NAME:Ljava/lang/String; = "mnoname"

.field public static final SALES_CODE:Ljava/lang/String; = "salescode"

.field public static final TABLE_NAME:Ljava/lang/String; = "match_profile_id"

.field private static final mTableMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/ims/settings/ImsSettings$ProfileIdTable;->mTableMap:Ljava/util/HashMap;

    .line 58
    const-string v1, "_id"

    const-string v2, "INTEGER PRIMARY KEY"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v1, "mccmnc"

    const-string v2, "TEXT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public static getTableMap()Ljava/util/HashMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 63
    sget-object v0, Lcom/sec/ims/settings/ImsSettings$ProfileIdTable;->mTableMap:Ljava/util/HashMap;

    return-object v0
.end method
