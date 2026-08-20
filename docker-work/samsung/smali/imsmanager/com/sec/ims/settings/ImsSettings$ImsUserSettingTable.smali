.class public Lcom/sec/ims/settings/ImsSettings$ImsUserSettingTable;
.super Ljava/lang/Object;
.source "ImsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/settings/ImsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImsUserSettingTable"
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String; = "name"

.field public static final PROJECTION:[Ljava/lang/String;

.field public static final VALUE:Ljava/lang/String; = "value"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 40
    const-string v0, "name"

    const-string v1, "value"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/ims/settings/ImsSettings$ImsUserSettingTable;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
