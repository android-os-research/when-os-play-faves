.class public final synthetic Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper;


# instance fields
.field public final synthetic blacklist f$0:I


# direct methods
.method public synthetic constructor blacklist <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda20;->f$0:I

    return-void
.end method


# virtual methods
.method public final blacklist callMethod(Lcom/android/internal/telephony/Phone;)Ljava/lang/Object;
    .registers 2

    iget p0, p0, Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda20;->f$0:I

    invoke-static {p0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->$r8$lambda$C0XIWfHmI-AYshyzmnjTOqsSEbQ(ILcom/android/internal/telephony/Phone;)Landroid/telephony/ImsiEncryptionInfo;

    move-result-object p0

    return-object p0
.end method
