.class public final synthetic Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda25;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/telephony/PhoneSubInfoController$PermissionCheckHelper;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/PhoneSubInfoController;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/PhoneSubInfoController;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda25;->f$0:Lcom/android/internal/telephony/PhoneSubInfoController;

    return-void
.end method


# virtual methods
.method public final blacklist checkPermission(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 12

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda25;->f$0:Lcom/android/internal/telephony/PhoneSubInfoController;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/PhoneSubInfoController;->$r8$lambda$RXzDgoMCP2x2epNyEwDf2N5w56s(Lcom/android/internal/telephony/PhoneSubInfoController;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
