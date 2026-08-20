.class public Lcom/android/internal/telephony/uicc/euicc/EuiccPort;
.super Lcom/android/internal/telephony/uicc/UiccPort;
.source "EuiccPort.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduExceptionHandler;,
        Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduIntermediateResultHandler;,
        Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduResponseHandler;,
        Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduRequestBuilder;
    }
.end annotation


# static fields
.field private static final blacklist SGP22_V_2_0:Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;

.field private static final blacklist SGP22_V_2_1:Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;


# instance fields
.field private final blacklist mApduSender:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;

.field private volatile blacklist mEid:Ljava/lang/String;

.field public blacklist mIsSupportsMultipleEnabledProfiles:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation
.end field

.field private blacklist mSpecVersion:Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;


# direct methods
.method public static synthetic blacklist $r8$lambda$-kigu-YyHxus8frwAAIdPUh95aE([B)Ljava/lang/Void;
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->lambda$resetMemory$17([B)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$-pKUyEQdbPi5AQMtzZ4RXyzSOUo(Ljava/lang/String;ZLcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->lambda$switchToProfile$8(Ljava/lang/String;ZLcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$11XPuJzEkB_z5dEXJRy9q41Sn1s(Ljava/lang/String;[B)Ljava/lang/Void;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->lambda$switchToProfile$9(Ljava/lang/String;[B)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$1qhaijXtF4gFooiCLb-dgNrqPA0([B)[B
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->lambda$authenticateServer$33([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$2DQXkMVFqEF1YbybMHZbthia06Q([B)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->lambda$getDefaultSmdpAddress$19([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$4Hbd0BSErHFxMSUcU5wGOJa02l0(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->lambda$getEuiccInfo2$30(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$4IyPx_AqmBIhHzPJKscsPFYsZkM(Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Ljava/lang/Throwable;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->lambda$sendApdu$51(Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$50gU0u8MHNEIQ2_LnDoHiADQ9Ls([B)[B
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->lambda$getEuiccChallenge$27([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$5QZWZeFiDfNCZ03pLT6MQ_HZXoc(ILcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->lambda$resetMemory$16(ILcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$5hjmIJ3AQsHH3JJcdJbm3ahBgQo(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->lambda$getEuiccInfo1$28(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$74j0QJrYg2Dut2NIrSL2WONXZJs(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->lambda$getSmdsAddress$20(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$7Cs8Yc7RXjEbA58qTep5gnQdyoA([B)Ljava/lang/Void;
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->lambda$setNickname$13([B)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$7v-mn47IHwTgv4flstpJQGi3tFU(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->lambda$getEuiccChallenge$26(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$8x9Mw_LfktrBXDaDFYF0Xl8vpps(Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Ljava/lang/Throwable;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->lambda$sendApdu$50(Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$CCEeSmhlJJ09YI39FABRIynn5Cg([B)[Landroid/telephony/euicc/EuiccNotification;
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->lambda$listNotifications$42([B)[Landroid/telephony/euicc/EuiccNotification;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$G0WlR7sFjtOnIOrNbsGByjCOsQo([B)[B
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->lambda$cancelSession$40([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$I4FkkNYDjD4HXnSgah8smrsciFI(Ljava/lang/String;[B)Ljava/lang/Void;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->lambda$disableProfile$7(Ljava/lang/String;[B)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$I8n7f84XMBicyac7wCHyRz7T8HU(Lcom/android/internal/telephony/uicc/IccIoResult;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->lambda$loadBoundProfilePackage$38(Lcom/android/internal/telephony/uicc/IccIoResult;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$Icg6iBopp5bnvWpKLXkiah4dSzo([B)Landroid/service/euicc/EuiccProfileInfo;
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->lambda$getProfile$5([B)Landroid/service/euicc/EuiccProfileInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$JCa3UqEeV9E1yf3CtduKbcdHXQo([B)Ljava/lang/Void;
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->lambda$deleteProfile$15([B)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$KEiRLFNUDlSZwDxw22A1UDgl0_Q(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->lambda$getRulesAuthTable$24(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$OXxQM5JhYqBY5j6LW41I0knTFq8(Ljava/lang/String;[BLcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->lambda$getProfile$4(Ljava/lang/String;[BLcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$OsZYVCMFCfBe5it3GXFr4-4YDv0(Ljava/lang/String;ZLcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->lambda$disableProfile$6(Ljava/lang/String;ZLcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$P61i7-oDvG67oq2J12gKRoqQOys([B)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->lambda$getSmdsAddress$21([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$QT_7ymMLOw5wJCMIDqDKKk7aZtw(Lcom/android/internal/telephony/uicc/euicc/EuiccPort;[B)Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->lambda$getSpecVersion$1([B)Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$R8S3upfyttofs8m6rEWHh9ygkh8([B)[B
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->lambda$prepareDownload$35([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$SoqNwjWgMVYZiiXOIqeCJrw_hnQ([B)[B
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->lambda$getEuiccInfo2$31([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$W8s5i_tSxhMJZzIGcZZiIhwgad8([B[B[B[BLcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->lambda$prepareDownload$34([B[B[B[BLcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$X9Yfp5ybyaffEkYmFgbKY5x2iyM(ILcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->lambda$listNotifications$41(ILcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$YheejUeJNhb_QcrRT7SS_uqr1jI([B)[Landroid/service/euicc/EuiccProfileInfo;
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->lambda$getAllProfiles$3([B)[Landroid/service/euicc/EuiccProfileInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$Z5M7WrnS9q0EKXLilpuwjpWKz1k(Lcom/android/internal/telephony/uicc/euicc/EuiccPort;Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduRequestBuilder;[BLcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->lambda$newRequestProvider$49(Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduRequestBuilder;[BLcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ZTKmgZx0VY1hhpMnyub2OrClZso(ILcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->lambda$removeNotificationFromList$47(ILcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$cs_LcsDqKRrwFIKolRwuVXlGJ_8(ILcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->lambda$retrieveNotification$45(ILcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$djAFOVdzYPLoUZKleMVLeqPaJGw([B)Landroid/telephony/euicc/EuiccNotification;
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->lambda$retrieveNotification$46([B)Landroid/telephony/euicc/EuiccNotification;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$fL0VUWmAi4iEnk4j4WJNGUJDK98(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->lambda$getSpecVersion$0(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$gIj8AXyT17u11q6AksZq8rPH8H4(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->lambda$setNickname$12(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$h4dxaGt6w2DLEjuwY5yQDT23-ic([B)[B
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->lambda$loadBoundProfilePackage$37([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$hPPhf7pfZX8_fQSSClGCb9lgE7Q(Ljava/lang/String;Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->lambda$deleteProfile$14(Ljava/lang/String;Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$iIEevObWb34msYCTik-Gb4MwJ4I(Ljava/lang/String;Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->lambda$setDefaultSmdpAddress$22(Ljava/lang/String;Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ida9xwff-HpvtTYbdWVYFWNKIfE(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->lambda$getEid$10(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$jBC1Rs9L5GzOirnYNgxs0RRJbZg([B)[B
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->lambda$getEuiccInfo1$29([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$jmSlGxbh6RJ1TlpOHOn766yqoK0([B)Landroid/telephony/euicc/EuiccRulesAuthTable;
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->lambda$getRulesAuthTable$25([B)Landroid/telephony/euicc/EuiccRulesAuthTable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$kMLlmDVIUZD_A2MXs_B0nyV87E0([BLcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->lambda$getAllProfiles$2([BLcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$lzZhU4FL8e7UTcVo-VUhIQueruk([B)Ljava/lang/Void;
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->lambda$setDefaultSmdpAddress$23([B)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$mKNbdxC-NBVg_MuaSuVxJri5W1U(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->lambda$getDefaultSmdpAddress$18(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$mutlf5eqleVMr1yJO-_NJAgeqTg(Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Ljava/lang/Throwable;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->lambda$sendApduWithSimResetErrorWorkaround$52(Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$oZrZHEj_ag5MOhHCUMeAEj_EQKo([B)[Landroid/telephony/euicc/EuiccNotification;
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->lambda$retrieveNotificationList$44([B)[Landroid/telephony/euicc/EuiccNotification;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$rOfUoyTjhwqHuLwCNizDg7rhmAg([B)Ljava/lang/Void;
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->lambda$removeNotificationFromList$48([B)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$vJ5tCcvFJEbfOADTdmc7DsCdKVU(ILcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->lambda$retrieveNotificationList$43(ILcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$xthwVcTlolXcDT0q1bfIpW8PCjI(Lcom/android/internal/telephony/uicc/euicc/EuiccPort;[B)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->lambda$getEid$11([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$y0LUemVlRBuEtoO7SQwwHDDf7JQ(Lcom/android/internal/telephony/uicc/euicc/EuiccPort;[BLcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->lambda$loadBoundProfilePackage$36([BLcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$zGKf2erBzB8Bx_f2_k7VPVEYpw8([BILcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->lambda$cancelSession$39([BILcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$zzslPVhNUf7fBhMvt2TAyiKZdU0(Lcom/android/internal/telephony/uicc/euicc/EuiccPort;Ljava/lang/String;[B[B[B[BLcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->lambda$authenticateServer$32(Ljava/lang/String;[B[B[B[BLcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 88
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;-><init>(III)V

    sput-object v0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->SGP22_V_2_0:Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;

    .line 89
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;-><init>(III)V

    sput-object v0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->SGP22_V_2_1:Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;ILjava/lang/Object;Lcom/android/internal/telephony/uicc/UiccCard;Z)V
    .registers 8

    .line 131
    invoke-direct/range {p0 .. p6}, Lcom/android/internal/telephony/uicc/UiccPort;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;ILjava/lang/Object;Lcom/android/internal/telephony/uicc/UiccCard;)V

    .line 133
    new-instance p1, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;

    const-string p5, "A0000005591010FFFFFFFF8900000100"

    const/4 p6, 0x0

    invoke-direct {p1, p2, p5, p6}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;-><init>(Lcom/android/internal/telephony/CommandsInterface;Ljava/lang/String;Z)V

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->mApduSender:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;

    .line 134
    iget-object p1, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->eid:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 135
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "no eid given in constructor for phone "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->loge(Ljava/lang/String;)V

    goto :goto_32

    .line 137
    :cond_2a
    iget-object p1, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->eid:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->mEid:Ljava/lang/String;

    .line 138
    iget-object p1, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->eid:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mCardId:Ljava/lang/String;

    .line 140
    :goto_32
    iput-boolean p7, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->mIsSupportsMultipleEnabledProfiles:Z

    return-void
.end method

.method private static blacklist buildCarrierIdentifier(Lcom/android/internal/telephony/uicc/asn1/Asn1Node;)Landroid/service/carrier/CarrierIdentifier;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [I

    const/16 v2, 0x81

    .line 1287
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->hasChild(I[I)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1b

    new-array v1, v0, [I

    .line 1288
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    goto :goto_1c

    :cond_1b
    move-object v1, v3

    :goto_1c
    new-array v2, v0, [I

    const/16 v4, 0x82

    .line 1291
    invoke-virtual {p0, v4, v2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->hasChild(I[I)Z

    move-result v2

    if-eqz v2, :cond_34

    new-array v2, v0, [I

    .line 1292
    invoke-virtual {p0, v4, v2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    .line 1294
    :cond_34
    new-instance v2, Landroid/service/carrier/CarrierIdentifier;

    const/16 v4, 0x80

    new-array v0, v0, [I

    invoke-virtual {p0, v4, v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asBytes()[B

    move-result-object p0

    invoke-direct {v2, p0, v1, v3}, Landroid/service/carrier/CarrierIdentifier;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private static blacklist buildProfile(Lcom/android/internal/telephony/uicc/asn1/Asn1Node;Landroid/service/euicc/EuiccProfileInfo$Builder;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [I

    const/16 v2, 0x90

    .line 1223
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->hasChild(I[I)Z

    move-result v1

    if-eqz v1, :cond_18

    new-array v1, v0, [I

    .line 1224
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/service/euicc/EuiccProfileInfo$Builder;->setNickname(Ljava/lang/String;)Landroid/service/euicc/EuiccProfileInfo$Builder;

    :cond_18
    new-array v1, v0, [I

    const/16 v2, 0x91

    .line 1227
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->hasChild(I[I)Z

    move-result v1

    if-eqz v1, :cond_2f

    new-array v1, v0, [I

    .line 1229
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asString()Ljava/lang/String;

    move-result-object v1

    .line 1228
    invoke-virtual {p1, v1}, Landroid/service/euicc/EuiccProfileInfo$Builder;->setServiceProviderName(Ljava/lang/String;)Landroid/service/euicc/EuiccProfileInfo$Builder;

    :cond_2f
    new-array v1, v0, [I

    const/16 v2, 0x92

    .line 1232
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->hasChild(I[I)Z

    move-result v1

    if-eqz v1, :cond_46

    new-array v1, v0, [I

    .line 1234
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asString()Ljava/lang/String;

    move-result-object v1

    .line 1233
    invoke-virtual {p1, v1}, Landroid/service/euicc/EuiccProfileInfo$Builder;->setProfileName(Ljava/lang/String;)Landroid/service/euicc/EuiccProfileInfo$Builder;

    :cond_46
    new-array v1, v0, [I

    const/16 v2, 0xb7

    .line 1237
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->hasChild(I[I)Z

    move-result v1

    if-eqz v1, :cond_5d

    new-array v1, v0, [I

    .line 1239
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->buildCarrierIdentifier(Lcom/android/internal/telephony/uicc/asn1/Asn1Node;)Landroid/service/carrier/CarrierIdentifier;

    move-result-object v1

    .line 1238
    invoke-virtual {p1, v1}, Landroid/service/euicc/EuiccProfileInfo$Builder;->setCarrierIdentifier(Landroid/service/carrier/CarrierIdentifier;)Landroid/service/euicc/EuiccProfileInfo$Builder;

    :cond_5d
    new-array v1, v0, [I

    const v2, 0x9f70

    .line 1242
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->hasChild(I[I)Z

    move-result v1

    if-eqz v1, :cond_92

    new-array v1, v0, [I

    const v3, 0x9f24

    .line 1247
    invoke-virtual {p0, v3, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->hasChild(I[I)Z

    move-result v1

    if-eqz v1, :cond_84

    new-array v1, v0, [I

    .line 1248
    invoke-virtual {p0, v3, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asInteger()I

    move-result v1

    if-ltz v1, :cond_84

    const/4 v1, 0x1

    .line 1249
    invoke-virtual {p1, v1}, Landroid/service/euicc/EuiccProfileInfo$Builder;->setState(I)Landroid/service/euicc/EuiccProfileInfo$Builder;

    goto :goto_95

    :cond_84
    new-array v1, v0, [I

    .line 1252
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asInteger()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/service/euicc/EuiccProfileInfo$Builder;->setState(I)Landroid/service/euicc/EuiccProfileInfo$Builder;

    goto :goto_95

    .line 1255
    :cond_92
    invoke-virtual {p1, v0}, Landroid/service/euicc/EuiccProfileInfo$Builder;->setState(I)Landroid/service/euicc/EuiccProfileInfo$Builder;

    :goto_95
    new-array v1, v0, [I

    const/16 v2, 0x95

    .line 1258
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->hasChild(I[I)Z

    move-result v1

    if-eqz v1, :cond_ad

    new-array v1, v0, [I

    .line 1261
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asInteger()I

    move-result v1

    .line 1260
    invoke-virtual {p1, v1}, Landroid/service/euicc/EuiccProfileInfo$Builder;->setProfileClass(I)Landroid/service/euicc/EuiccProfileInfo$Builder;

    goto :goto_b1

    :cond_ad
    const/4 v1, 0x2

    .line 1263
    invoke-virtual {p1, v1}, Landroid/service/euicc/EuiccProfileInfo$Builder;->setProfileClass(I)Landroid/service/euicc/EuiccProfileInfo$Builder;

    :goto_b1
    new-array v1, v0, [I

    const/16 v2, 0x99

    .line 1266
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->hasChild(I[I)Z

    move-result v1

    if-eqz v1, :cond_c8

    new-array v1, v0, [I

    .line 1269
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asBits()I

    move-result v1

    .line 1268
    invoke-virtual {p1, v1}, Landroid/service/euicc/EuiccProfileInfo$Builder;->setPolicyRules(I)Landroid/service/euicc/EuiccProfileInfo$Builder;

    :cond_c8
    new-array v1, v0, [I

    const v2, 0xbf76

    .line 1272
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->hasChild(I[I)Z

    move-result v1

    if-eqz v1, :cond_ed

    new-array v0, v0, [I

    .line 1273
    invoke-virtual {p0, v2, v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    const/16 v0, 0xe2

    .line 1274
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChildren(I)Ljava/util/List;

    move-result-object p0

    .line 1275
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->buildUiccAccessRule(Ljava/util/List;)[Landroid/telephony/UiccAccessRule;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_ea

    .line 1278
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1280
    :cond_ea
    invoke-virtual {p1, v0}, Landroid/service/euicc/EuiccProfileInfo$Builder;->setUiccAccessRule(Ljava/util/List;)Landroid/service/euicc/EuiccProfileInfo$Builder;

    :cond_ed
    return-void
.end method

.method private static blacklist buildUiccAccessRule(Ljava/util/List;)[Landroid/telephony/UiccAccessRule;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/uicc/asn1/Asn1Node;",
            ">;)[",
            "Landroid/telephony/UiccAccessRule;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;
        }
    .end annotation

    .line 1300
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 1303
    :cond_8
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 1304
    new-array v2, v0, [Landroid/telephony/UiccAccessRule;

    const/4 v3, 0x0

    move v4, v3

    :goto_10
    if-ge v4, v0, :cond_69

    .line 1306
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    const/16 v6, 0xe1

    new-array v7, v3, [I

    .line 1307
    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v6

    const/16 v7, 0xc1

    new-array v8, v3, [I

    .line 1308
    invoke-virtual {v6, v7, v8}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asBytes()[B

    move-result-object v7

    new-array v8, v3, [I

    const/16 v9, 0xca

    .line 1311
    invoke-virtual {v6, v9, v8}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->hasChild(I[I)Z

    move-result v8

    if-eqz v8, :cond_41

    new-array v8, v3, [I

    .line 1312
    invoke-virtual {v6, v9, v8}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asString()Ljava/lang/String;

    move-result-object v6

    goto :goto_42

    :cond_41
    move-object v6, v1

    :goto_42
    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    new-array v11, v10, [I

    const/16 v12, 0xdb

    aput v12, v11, v3

    const/16 v13, 0xe3

    .line 1315
    invoke-virtual {v5, v13, v11}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->hasChild(I[I)Z

    move-result v11

    if-eqz v11, :cond_5f

    new-array v8, v10, [I

    aput v12, v8, v3

    .line 1316
    invoke-virtual {v5, v13, v8}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v5

    .line 1317
    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asRawLong()J

    move-result-wide v8

    .line 1319
    :cond_5f
    new-instance v5, Landroid/telephony/UiccAccessRule;

    invoke-direct {v5, v7, v6, v8, v9}, Landroid/telephony/UiccAccessRule;-><init>([BLjava/lang/String;J)V

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    :cond_69
    return-object v2
.end method

.method private static blacklist createNotification(Lcom/android/internal/telephony/uicc/asn1/Asn1Node;)Landroid/telephony/euicc/EuiccNotification;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 1335
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getTag()I

    move-result v0

    const v1, 0xbf2f

    const/4 v2, 0x0

    if-ne v0, v1, :cond_c

    move-object v0, p0

    goto :goto_28

    .line 1337
    :cond_c
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getTag()I

    move-result v0

    const v3, 0xbf37

    if-ne v0, v3, :cond_22

    const v0, 0xbf27

    const/4 v3, 0x1

    new-array v3, v3, [I

    aput v1, v3, v2

    .line 1338
    invoke-virtual {p0, v0, v3}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v0

    goto :goto_28

    :cond_22
    new-array v0, v2, [I

    .line 1342
    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v0

    .line 1345
    :goto_28
    new-instance v3, Landroid/telephony/euicc/EuiccNotification;

    const/16 v4, 0x80

    new-array v5, v2, [I

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asInteger()I

    move-result v4

    const/16 v5, 0xc

    new-array v6, v2, [I

    .line 1346
    invoke-virtual {v0, v5, v6}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x81

    new-array v2, v2, [I

    .line 1347
    invoke-virtual {v0, v6, v2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asBits()I

    move-result v0

    .line 1348
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getTag()I

    move-result v2

    if-ne v2, v1, :cond_56

    const/4 p0, 0x0

    goto :goto_5a

    :cond_56
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toBytes()[B

    move-result-object p0

    :goto_5a
    invoke-direct {v3, v4, v5, v0, p0}, Landroid/telephony/euicc/EuiccNotification;-><init>(ILjava/lang/String;I[B)V

    return-object v3
.end method

.method public static blacklist getDeviceId(Ljava/lang/String;Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;)[B
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 1052
    sget-object v1, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->SGP22_V_2_1:Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;->compareTo(Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;)I

    move-result p1

    if-ltz p1, :cond_2e

    .line 1076
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x46

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1077
    invoke-static {p0, v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToBytes(Ljava/lang/String;[B)V

    const/4 p0, 0x7

    aget-byte p1, v0, p0

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 v1, p1, 0x4

    ushr-int/lit8 p1, p1, 0x4

    or-int/2addr p1, v1

    int-to-byte p1, p1

    aput-byte p1, v0, p0

    goto :goto_31

    .line 1095
    :cond_2e
    invoke-static {p0, v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToBytes(Ljava/lang/String;[B)V

    :goto_31
    return-object v0
.end method

.method private blacklist getOrExtractSpecVersion([B)Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;
    .registers 4

    .line 1124
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->mSpecVersion:Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;

    if-eqz v0, :cond_5

    return-object v0

    .line 1128
    :cond_5
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;->fromOpenChannelResponse([B)Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;

    move-result-object p1

    if-eqz p1, :cond_19

    .line 1130
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1131
    :try_start_e
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->mSpecVersion:Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;

    if-nez v1, :cond_14

    .line 1132
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->mSpecVersion:Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;

    .line 1134
    :cond_14
    monitor-exit v0

    goto :goto_19

    :catchall_16
    move-exception p0

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_16

    throw p0

    :cond_19
    :goto_19
    return-object p1
.end method

.method private synthetic blacklist lambda$authenticateServer$32(Ljava/lang/String;[B[B[B[BLcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 614
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->getDeviceId()[B

    move-result-object v0

    const/4 v1, 0x4

    new-array v2, v1, [B

    const/4 v3, 0x0

    .line 617
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v1, 0xa1

    .line 619
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v4

    .line 620
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1070126

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_29

    .line 623
    array-length v6, v5

    :goto_1f
    if-ge v3, v6, :cond_2e

    aget-object v7, v5, v3

    .line 624
    invoke-virtual {p0, v4, v7}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->addDeviceCapability(Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    :cond_29
    const-string p0, "No device capabilities set."

    .line 627
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->logd(Ljava/lang/String;)V

    :cond_2e
    const/16 p0, 0xa0

    .line 630
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p0

    const/16 v3, 0x80

    .line 631
    invoke-virtual {p0, v3, p1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsString(ILjava/lang/String;)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p0

    .line 632
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p1

    .line 633
    invoke-virtual {p1, v3, v2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBytes(I[B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p1

    .line 634
    invoke-virtual {p1, v4}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChild(Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p1

    const/16 v1, 0x82

    .line 635
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBytes(I[B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p1

    .line 632
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChild(Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p0

    const p1, 0xbf38

    .line 637
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p1

    new-instance v0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;

    invoke-direct {v0, p2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;-><init>([B)V

    .line 638
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->nextNode()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChild(Lcom/android/internal/telephony/uicc/asn1/Asn1Node;)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p1

    new-instance p2, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;

    invoke-direct {p2, p3}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;-><init>([B)V

    .line 639
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->nextNode()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChild(Lcom/android/internal/telephony/uicc/asn1/Asn1Node;)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p1

    new-instance p2, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;

    invoke-direct {p2, p4}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;-><init>([B)V

    .line 640
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->nextNode()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChild(Lcom/android/internal/telephony/uicc/asn1/Asn1Node;)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p1

    new-instance p2, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;

    invoke-direct {p2, p5}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;-><init>([B)V

    .line 641
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->nextNode()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChild(Lcom/android/internal/telephony/uicc/asn1/Asn1Node;)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p1

    .line 642
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChild(Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p0

    .line 643
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->build()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object p0

    .line 637
    invoke-virtual {p6, p0}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic blacklist lambda$authenticateServer$33([B)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 646
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->parseResponse([B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x2

    aput v3, v1, v2

    const/16 v4, 0xa1

    .line 647
    invoke-virtual {p0, v4, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->hasChild(I[I)Z

    move-result v1

    if-nez v1, :cond_18

    .line 652
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toBytes()[B

    move-result-object p0

    return-object p0

    .line 648
    :cond_18
    new-instance v1, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;

    const/4 v5, 0x3

    new-array v0, v0, [I

    aput v3, v0, v2

    .line 650
    invoke-virtual {p0, v4, v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asInteger()I

    move-result p0

    invoke-direct {v1, v5, p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;-><init>(II)V

    throw v1
.end method

.method private static synthetic blacklist lambda$cancelSession$39([BILcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    const v0, 0xbf41

    .line 829
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    const/16 v1, 0x80

    .line 830
    invoke-virtual {v0, v1, p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBytes(I[B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p0

    const/16 v0, 0x81

    .line 831
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsInteger(II)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p0

    .line 832
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->build()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object p0

    .line 829
    invoke-virtual {p2, p0}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic blacklist lambda$cancelSession$40([B)[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 834
    invoke-static {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->parseResponseAndCheckSimpleError([BI)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    .line 835
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toBytes()[B

    move-result-object p0

    return-object p0
.end method

.method private static synthetic blacklist lambda$deleteProfile$14(Ljava/lang/String;Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 406
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->padTrailingFs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToBytes(Ljava/lang/String;)[B

    move-result-object p0

    const v0, 0xbf33

    .line 407
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    const/16 v1, 0x5a

    .line 408
    invoke-virtual {v0, v1, p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBytes(I[B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p0

    .line 409
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->build()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object p0

    .line 407
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic blacklist lambda$deleteProfile$15([B)Ljava/lang/Void;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 413
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->parseSimpleResult([B)I

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 415
    :cond_8
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;

    const/16 v1, 0xc

    invoke-direct {v0, v1, p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;-><init>(II)V

    throw v0
.end method

.method private static synthetic blacklist lambda$disableProfile$6(Ljava/lang/String;ZLcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 266
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->padTrailingFs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToBytes(Ljava/lang/String;)[B

    move-result-object p0

    const v0, 0xbf32

    .line 267
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    const/16 v1, 0xa0

    .line 268
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v1

    const/16 v2, 0x5a

    .line 269
    invoke-virtual {v1, v2, p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBytes(I[B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p0

    .line 268
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChild(Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p0

    const/16 v0, 0x81

    .line 270
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBoolean(IZ)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p0

    .line 271
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->build()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object p0

    .line 267
    invoke-virtual {p2, p0}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic blacklist lambda$disableProfile$7(Ljava/lang/String;[B)Ljava/lang/Void;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 276
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->parseSimpleResult([B)I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2b

    const/4 v1, 0x2

    if-ne p1, v1, :cond_23

    .line 281
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Profile is already disabled, iccid: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    invoke-static {p0}, Landroid/telephony/SubscriptionInfo;->givePrintableIccid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 281
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->logd(Ljava/lang/String;)V

    return-object v0

    .line 285
    :cond_23
    new-instance p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;

    const/16 v0, 0xb

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;-><init>(II)V

    throw p0

    :cond_2b
    return-object v0
.end method

.method private static synthetic blacklist lambda$getAllProfiles$2([BLcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    const v0, 0xbf2d

    .line 188
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    const/16 v1, 0x5c

    .line 189
    invoke-virtual {v0, v1, p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBytes(I[B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p0

    .line 190
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->build()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object p0

    .line 188
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic blacklist lambda$getAllProfiles$3([B)[Landroid/service/euicc/EuiccProfileInfo;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 192
    new-instance v0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;-><init>([B)V

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->nextNode()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    const/4 v0, 0x0

    new-array v1, v0, [I

    const/16 v2, 0xa0

    .line 193
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    const/16 v1, 0xe3

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChildren(I)Ljava/util/List;

    move-result-object p0

    .line 194
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 195
    new-array v2, v1, [Landroid/service/euicc/EuiccProfileInfo;

    move v3, v0

    move v4, v3

    :goto_20
    if-ge v3, v1, :cond_5a

    .line 198
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    new-array v6, v0, [I

    const/16 v7, 0x5a

    .line 199
    invoke-virtual {v5, v7, v6}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->hasChild(I[I)Z

    move-result v6

    if-nez v6, :cond_38

    const-string v5, "Profile must have an ICCID."

    .line 200
    invoke-static {v5}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->loge(Ljava/lang/String;)V

    goto :goto_57

    :cond_38
    new-array v6, v0, [I

    .line 204
    invoke-virtual {v5, v7, v6}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asBytes()[B

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->stripTrailingFs([B)Ljava/lang/String;

    move-result-object v6

    .line 205
    new-instance v7, Landroid/service/euicc/EuiccProfileInfo$Builder;

    invoke-direct {v7, v6}, Landroid/service/euicc/EuiccProfileInfo$Builder;-><init>(Ljava/lang/String;)V

    .line 207
    invoke-static {v5, v7}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->buildProfile(Lcom/android/internal/telephony/uicc/asn1/Asn1Node;Landroid/service/euicc/EuiccProfileInfo$Builder;)V

    .line 209
    invoke-virtual {v7}, Landroid/service/euicc/EuiccProfileInfo$Builder;->build()Landroid/service/euicc/EuiccProfileInfo;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    .line 210
    aput-object v5, v2, v4

    move v4, v6

    :goto_57
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    :cond_5a
    return-object v2
.end method

.method private static synthetic blacklist lambda$getDefaultSmdpAddress$18(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    const v0, 0xbf3c

    .line 460
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    .line 461
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->build()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object v0

    .line 459
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic blacklist lambda$getDefaultSmdpAddress$19([B)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 462
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->parseResponse([B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [I

    const/16 v1, 0x80

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic blacklist lambda$getEid$10(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    const v0, 0xbf3e

    .line 353
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/16 v3, 0x5a

    aput-byte v3, v1, v2

    const/16 v2, 0x5c

    .line 354
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBytes(I[B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    .line 355
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->build()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object v0

    .line 353
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic blacklist lambda$getEid$11([B)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 357
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->parseResponse([B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [I

    const/16 v1, 0x5a

    .line 358
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asBytes()[B

    move-result-object p1

    .line 357
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p1

    .line 359
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 360
    :try_start_18
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->mEid:Ljava/lang/String;

    .line 361
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mCardId:Ljava/lang/String;

    .line 362
    monitor-exit v0

    return-object p1

    :catchall_1e
    move-exception p0

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_18 .. :try_end_20} :catchall_1e

    throw p0
.end method

.method private static synthetic blacklist lambda$getEuiccChallenge$26(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    const v0, 0xbf2e

    .line 558
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    .line 559
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->build()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object v0

    .line 557
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic blacklist lambda$getEuiccChallenge$27([B)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 560
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->parseResponse([B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [I

    const/16 v1, 0x80

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asBytes()[B

    move-result-object p0

    return-object p0
.end method

.method private static synthetic blacklist lambda$getEuiccInfo1$28(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    const v0, 0xbf20

    .line 575
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    .line 576
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->build()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object v0

    .line 575
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic blacklist lambda$getEuiccInfo1$29([B)[B
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    return-object p0
.end method

.method private static synthetic blacklist lambda$getEuiccInfo2$30(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    const v0, 0xbf22

    .line 592
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    .line 593
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->build()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object v0

    .line 592
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic blacklist lambda$getEuiccInfo2$31([B)[B
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    return-object p0
.end method

.method private static synthetic blacklist lambda$getProfile$4(Ljava/lang/String;[BLcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    const v0, 0xbf2d

    .line 230
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    const/16 v1, 0xa0

    .line 231
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v1

    .line 233
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->padTrailingFs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToBytes(Ljava/lang/String;)[B

    move-result-object p0

    const/16 v2, 0x5a

    .line 232
    invoke-virtual {v1, v2, p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBytes(I[B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p0

    .line 234
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->build()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    .line 231
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChild(Lcom/android/internal/telephony/uicc/asn1/Asn1Node;)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p0

    const/16 v0, 0x5c

    .line 235
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBytes(I[B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p0

    .line 236
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->build()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object p0

    .line 230
    invoke-virtual {p2, p0}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic blacklist lambda$getProfile$5([B)Landroid/service/euicc/EuiccProfileInfo;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 238
    new-instance v0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;-><init>([B)V

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->nextNode()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    const/4 v0, 0x0

    new-array v1, v0, [I

    const/16 v2, 0xa0

    .line 239
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    const/16 v1, 0xe3

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChildren(I)Ljava/util/List;

    move-result-object p0

    .line 240
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_20

    const/4 p0, 0x0

    return-object p0

    .line 243
    :cond_20
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    const/16 v1, 0x5a

    new-array v0, v0, [I

    .line 245
    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->stripTrailingFs([B)Ljava/lang/String;

    move-result-object v0

    .line 246
    new-instance v1, Landroid/service/euicc/EuiccProfileInfo$Builder;

    invoke-direct {v1, v0}, Landroid/service/euicc/EuiccProfileInfo$Builder;-><init>(Ljava/lang/String;)V

    .line 248
    invoke-static {p0, v1}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->buildProfile(Lcom/android/internal/telephony/uicc/asn1/Asn1Node;Landroid/service/euicc/EuiccProfileInfo$Builder;)V

    .line 249
    invoke-virtual {v1}, Landroid/service/euicc/EuiccProfileInfo$Builder;->build()Landroid/service/euicc/EuiccProfileInfo;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic blacklist lambda$getRulesAuthTable$24(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    const v0, 0xbf43

    .line 521
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    .line 522
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->build()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object v0

    .line 521
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic blacklist lambda$getRulesAuthTable$25([B)Landroid/telephony/euicc/EuiccRulesAuthTable;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 524
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->parseResponse([B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    const/16 v0, 0xa0

    .line 525
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChildren(I)Ljava/util/List;

    move-result-object p0

    .line 526
    new-instance v0, Landroid/telephony/euicc/EuiccRulesAuthTable$Builder;

    .line 527
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/telephony/euicc/EuiccRulesAuthTable$Builder;-><init>(I)V

    .line 528
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_19
    if-ge v3, v1, :cond_70

    .line 530
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    const/4 v5, 0x1

    new-array v6, v5, [I

    const/16 v7, 0xa1

    aput v7, v6, v2

    const/16 v7, 0x30

    .line 532
    invoke-virtual {v4, v7, v6}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChildren()Ljava/util/List;

    move-result-object v6

    .line 533
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    .line 534
    new-array v9, v8, [Landroid/service/carrier/CarrierIdentifier;

    move v10, v2

    :goto_39
    if-ge v10, v8, :cond_4a

    .line 536
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    invoke-static {v11}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->buildCarrierIdentifier(Lcom/android/internal/telephony/uicc/asn1/Asn1Node;)Landroid/service/carrier/CarrierIdentifier;

    move-result-object v11

    aput-object v11, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_39

    :cond_4a
    new-array v6, v5, [I

    const/16 v8, 0x80

    aput v8, v6, v2

    .line 538
    invoke-virtual {v4, v7, v6}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asBits()I

    move-result v6

    .line 539
    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    new-array v5, v5, [I

    const/16 v9, 0x82

    aput v9, v5, v2

    invoke-virtual {v4, v7, v5}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v4

    .line 540
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asBits()I

    move-result v4

    .line 538
    invoke-virtual {v0, v6, v8, v4}, Landroid/telephony/euicc/EuiccRulesAuthTable$Builder;->add(ILjava/util/List;I)Landroid/telephony/euicc/EuiccRulesAuthTable$Builder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 542
    :cond_70
    invoke-virtual {v0}, Landroid/telephony/euicc/EuiccRulesAuthTable$Builder;->build()Landroid/telephony/euicc/EuiccRulesAuthTable;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic blacklist lambda$getSmdsAddress$20(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    const v0, 0xbf3c

    .line 477
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    .line 478
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->build()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object v0

    .line 476
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic blacklist lambda$getSmdsAddress$21([B)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 479
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->parseResponse([B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [I

    const/16 v1, 0x81

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic blacklist lambda$getSpecVersion$0(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    return-void
.end method

.method private synthetic blacklist lambda$getSpecVersion$1([B)Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 154
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->mSpecVersion:Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;

    return-object p0
.end method

.method private static synthetic blacklist lambda$listNotifications$41(ILcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    const v0, 0xbf28

    .line 851
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    const/16 v1, 0x81

    .line 852
    invoke-virtual {v0, v1, p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBits(II)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p0

    .line 853
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->build()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object p0

    .line 851
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic blacklist lambda$listNotifications$42([B)[Landroid/telephony/euicc/EuiccNotification;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    const/4 v0, 0x6

    .line 855
    invoke-static {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->parseResponseAndCheckSimpleError([BI)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    const/4 v0, 0x0

    new-array v1, v0, [I

    const/16 v2, 0xa0

    .line 857
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChildren()Ljava/util/List;

    move-result-object p0

    .line 858
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    new-array v2, v1, [Landroid/telephony/euicc/EuiccNotification;

    :goto_18
    if-ge v0, v1, :cond_29

    .line 860
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->createNotification(Lcom/android/internal/telephony/uicc/asn1/Asn1Node;)Landroid/telephony/euicc/EuiccNotification;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_29
    return-object v2
.end method

.method private synthetic blacklist lambda$loadBoundProfilePackage$36([BLcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 708
    new-instance v0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;-><init>([B)V

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->nextNode()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p1

    .line 709
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getDataLength()I

    move-result v0

    const/4 v1, 0x0

    new-array v2, v1, [I

    const v3, 0xbf23

    .line 712
    invoke-virtual {p1, v3, v2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v2

    .line 714
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getEncodedLength()I

    move-result v3

    add-int/2addr v3, v1

    new-array v4, v1, [I

    const/16 v5, 0xa0

    .line 716
    invoke-virtual {p1, v5, v4}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v4

    .line 717
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getEncodedLength()I

    move-result v5

    add-int/2addr v3, v5

    new-array v5, v1, [I

    const/16 v6, 0xa1

    .line 719
    invoke-virtual {p1, v6, v5}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v5

    const/16 v6, 0x88

    .line 720
    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChildren(I)Ljava/util/List;

    move-result-object v6

    .line 721
    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getEncodedLength()I

    move-result v7

    add-int/2addr v3, v7

    new-array v7, v1, [I

    const/16 v8, 0xa2

    .line 724
    invoke-virtual {p1, v8, v7}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->hasChild(I[I)Z

    move-result v7

    if-eqz v7, :cond_52

    new-array v7, v1, [I

    .line 725
    invoke-virtual {p1, v8, v7}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v7

    .line 726
    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getEncodedLength()I

    move-result v8

    add-int/2addr v3, v8

    goto :goto_53

    :cond_52
    const/4 v7, 0x0

    :goto_53
    const/16 v8, 0xa3

    new-array v9, v1, [I

    .line 729
    invoke-virtual {p1, v8, v9}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v8

    const/16 v9, 0x86

    .line 730
    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChildren(I)Ljava/util/List;

    move-result-object v9

    .line 731
    invoke-virtual {v8}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getEncodedLength()I

    move-result v10

    add-int/2addr v3, v10

    .line 733
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->mSpecVersion:Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;

    sget-object v10, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->SGP22_V_2_1:Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;->compareTo(Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;)I

    move-result p0

    if-ltz p0, :cond_a7

    if-eqz v9, :cond_9f

    .line 744
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_9f

    if-ne v0, v3, :cond_7b

    goto :goto_a7

    .line 757
    :cond_7b
    new-instance p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Actual BPP length ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") does not match segmented length ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "), this must be due to a malformed BPP"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 750
    :cond_9f
    new-instance p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;

    const-string p1, "No profile elements in BPP"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 766
    :cond_a7
    :goto_a7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getHeadAsHex()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 767
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 766
    invoke-virtual {p2, p0}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    .line 769
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    .line 771
    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getHeadAsHex()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    .line 772
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result p0

    move p1, v1

    :goto_d4
    if-ge p1, p0, :cond_e6

    .line 774
    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_d4

    :cond_e6
    if-eqz v7, :cond_ef

    .line 778
    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    .line 781
    :cond_ef
    invoke-virtual {v8}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getHeadAsHex()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    .line 782
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result p0

    :goto_fa
    if-ge v1, p0, :cond_10c

    .line 784
    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_fa

    :cond_10c
    return-void
.end method

.method private static synthetic blacklist lambda$loadBoundProfilePackage$37([B)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 789
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->parseResponse([B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 790
    fill-array-data v1, :array_2c

    const v2, 0xbf27

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->hasChild(I[I)Z

    move-result v1

    if-nez v1, :cond_18

    .line 799
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toBytes()[B

    move-result-object p0

    return-object p0

    :cond_18
    new-array v0, v0, [I

    .line 792
    fill-array-data v0, :array_36

    invoke-virtual {p0, v2, v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    .line 795
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;

    const/4 v1, 0x5

    .line 797
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asInteger()I

    move-result v2

    invoke-direct {v0, v1, v2, p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;-><init>(IILcom/android/internal/telephony/uicc/asn1/Asn1Node;)V

    throw v0

    :array_2c
    .array-data 4
        0xa2
        0xa1
        0x81
    .end array-data

    :array_36
    .array-data 4
        0xa2
        0xa1
        0x81
    .end array-data
.end method

.method private static synthetic blacklist lambda$loadBoundProfilePackage$38(Lcom/android/internal/telephony/uicc/IccIoResult;)Z
    .registers 4

    .line 802
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    const/4 v0, 0x1

    if-eqz p0, :cond_20

    .line 803
    array-length v1, p0

    const/4 v2, 0x2

    if-le v1, v2, :cond_20

    const/4 v1, 0x0

    .line 804
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    aget-byte p0, p0, v0

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v2

    const v2, 0xbf37

    if-ne p0, v2, :cond_20

    const-string p0, "loadBoundProfilePackage failed due to an early error."

    .line 807
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->logd(Ljava/lang/String;)V

    return v1

    :cond_20
    return v0
.end method

.method private synthetic blacklist lambda$newRequestProvider$49(Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduRequestBuilder;[BLcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1107
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->getOrExtractSpecVersion([B)Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;

    move-result-object p0

    if-eqz p0, :cond_32

    .line 1112
    :try_start_6
    sget-object p2, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->SGP22_V_2_0:Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;->compareTo(Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;)I

    move-result p2

    if-ltz p2, :cond_12

    .line 1115
    invoke-interface {p1, p3}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduRequestBuilder;->build(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V

    return-void

    .line 1113
    :cond_12
    new-instance p1, Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "eUICC spec version is unsupported: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_29
    .catch Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException; {:try_start_6 .. :try_end_29} :catch_29
    .catch Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException; {:try_start_6 .. :try_end_29} :catch_29

    :catch_29
    move-exception p0

    .line 1117
    new-instance p1, Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;

    const-string p2, "Cannot parse ASN1 to build request."

    invoke-direct {p1, p2, p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 1109
    :cond_32
    new-instance p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;

    const-string p1, "Cannot get eUICC spec version."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static synthetic blacklist lambda$prepareDownload$34([B[B[B[BLcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    const v0, 0xbf21

    .line 673
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;-><init>([B)V

    .line 674
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->nextNode()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChild(Lcom/android/internal/telephony/uicc/asn1/Asn1Node;)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;-><init>([B)V

    .line 675
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->nextNode()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChild(Lcom/android/internal/telephony/uicc/asn1/Asn1Node;)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p0

    if-eqz p2, :cond_27

    const/4 p1, 0x4

    .line 677
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBytes(I[B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    .line 679
    :cond_27
    new-instance p1, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;

    invoke-direct {p1, p3}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;-><init>([B)V

    .line 680
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->nextNode()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChild(Lcom/android/internal/telephony/uicc/asn1/Asn1Node;)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p0

    .line 681
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->build()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object p0

    .line 679
    invoke-virtual {p4, p0}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic blacklist lambda$prepareDownload$35([B)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 684
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->parseResponse([B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x2

    aput v3, v1, v2

    const/16 v4, 0xa1

    .line 685
    invoke-virtual {p0, v4, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->hasChild(I[I)Z

    move-result v1

    if-nez v1, :cond_18

    .line 690
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toBytes()[B

    move-result-object p0

    return-object p0

    .line 686
    :cond_18
    new-instance v1, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;

    new-array v0, v0, [I

    aput v3, v0, v2

    .line 688
    invoke-virtual {p0, v4, v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asInteger()I

    move-result p0

    invoke-direct {v1, v3, p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;-><init>(II)V

    throw v1
.end method

.method private static synthetic blacklist lambda$removeNotificationFromList$47(ILcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    const v0, 0xbf30

    .line 950
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    const/16 v1, 0x80

    .line 951
    invoke-virtual {v0, v1, p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsInteger(II)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p0

    .line 952
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->build()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object p0

    .line 949
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic blacklist lambda$removeNotificationFromList$48([B)Ljava/lang/Void;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 955
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->parseSimpleResult([B)I

    move-result p0

    if-eqz p0, :cond_12

    const/4 v0, 0x1

    if-ne p0, v0, :cond_a

    goto :goto_12

    .line 957
    :cond_a
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;

    const/16 v1, 0x9

    invoke-direct {v0, v1, p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;-><init>(II)V

    throw v0

    :cond_12
    :goto_12
    const/4 p0, 0x0

    return-object p0
.end method

.method private static synthetic blacklist lambda$resetMemory$16(ILcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    const v0, 0xbf34

    .line 435
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    const/16 v1, 0x82

    .line 436
    invoke-virtual {v0, v1, p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBits(II)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p0

    .line 437
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->build()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object p0

    .line 435
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic blacklist lambda$resetMemory$17([B)Ljava/lang/Void;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 439
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->parseSimpleResult([B)I

    move-result p0

    if-eqz p0, :cond_12

    const/4 v0, 0x1

    if-ne p0, v0, :cond_a

    goto :goto_12

    .line 441
    :cond_a
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;

    const/16 v1, 0xd

    invoke-direct {v0, v1, p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;-><init>(II)V

    throw v0

    :cond_12
    :goto_12
    const/4 p0, 0x0

    return-object p0
.end method

.method private static synthetic blacklist lambda$retrieveNotification$45(ILcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    const v0, 0xbf2b

    .line 921
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    const/16 v1, 0xa0

    .line 922
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v1

    const/16 v2, 0x80

    .line 923
    invoke-virtual {v1, v2, p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsInteger(II)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p0

    .line 922
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChild(Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p0

    .line 924
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->build()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object p0

    .line 920
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic blacklist lambda$retrieveNotification$46([B)Landroid/telephony/euicc/EuiccNotification;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 926
    invoke-static {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->parseResponseAndCheckSimpleError([BI)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    const/4 v0, 0x0

    new-array v1, v0, [I

    const/16 v2, 0xa0

    .line 928
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChildren()Ljava/util/List;

    move-result-object p0

    .line 929
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_24

    .line 930
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->createNotification(Lcom/android/internal/telephony/uicc/asn1/Asn1Node;)Landroid/telephony/euicc/EuiccNotification;

    move-result-object p0

    return-object p0

    :cond_24
    const/4 p0, 0x0

    return-object p0
.end method

.method private static synthetic blacklist lambda$retrieveNotificationList$43(ILcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    const v0, 0xbf2b

    .line 880
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    const/16 v1, 0xa0

    .line 881
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v1

    const/16 v2, 0x81

    .line 882
    invoke-virtual {v1, v2, p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBits(II)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p0

    .line 881
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChild(Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p0

    .line 883
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->build()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object p0

    .line 879
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic blacklist lambda$retrieveNotificationList$44([B)[Landroid/telephony/euicc/EuiccNotification;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 885
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->parseResponse([B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    const/4 v0, 0x0

    new-array v1, v0, [I

    const/16 v2, 0x81

    .line 886
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->hasChild(I[I)Z

    move-result v1

    if-eqz v1, :cond_27

    new-array v1, v0, [I

    .line 888
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asInteger()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1f

    new-array p0, v0, [Landroid/telephony/euicc/EuiccNotification;

    return-object p0

    .line 893
    :cond_1f
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;-><init>(II)V

    throw v0

    :cond_27
    const/16 v1, 0xa0

    new-array v2, v0, [I

    .line 898
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChildren()Ljava/util/List;

    move-result-object p0

    .line 899
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    new-array v2, v1, [Landroid/telephony/euicc/EuiccNotification;

    :goto_39
    if-ge v0, v1, :cond_4a

    .line 901
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->createNotification(Lcom/android/internal/telephony/uicc/asn1/Asn1Node;)Landroid/telephony/euicc/EuiccNotification;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    :cond_4a
    return-object v2
.end method

.method private static synthetic blacklist lambda$sendApdu$50(Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Ljava/lang/Throwable;)V
    .registers 4

    .line 1151
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;

    const-string v1, "Cannot send APDU."

    invoke-direct {v0, v1, p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;->onException(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static synthetic blacklist lambda$sendApdu$51(Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Ljava/lang/Throwable;)V
    .registers 4

    .line 1160
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;

    const-string v1, "Cannot send APDU."

    invoke-direct {v0, v1, p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;->onException(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static synthetic blacklist lambda$sendApduWithSimResetErrorWorkaround$52(Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Ljava/lang/Throwable;)V
    .registers 4

    .line 1177
    instance-of v0, p1, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduException;

    if-eqz v0, :cond_19

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduException;

    .line 1178
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduException;->getApduStatus()I

    move-result v0

    const/16 v1, 0x6f00

    if-ne v0, v1, :cond_19

    const-string p1, "Sim is refreshed after disabling profile, no response got."

    .line 1179
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->logi(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1180
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;->onResult(Ljava/lang/Object;)V

    goto :goto_23

    .line 1182
    :cond_19
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;

    const-string v1, "Cannot send APDU."

    invoke-direct {v0, v1, p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;->onException(Ljava/lang/Throwable;)V

    :goto_23
    return-void
.end method

.method private static synthetic blacklist lambda$setDefaultSmdpAddress$22(Ljava/lang/String;Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    const v0, 0xbf3f

    .line 495
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    const/16 v1, 0x80

    .line 496
    invoke-virtual {v0, v1, p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsString(ILjava/lang/String;)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p0

    .line 497
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->build()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object p0

    .line 494
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic blacklist lambda$setDefaultSmdpAddress$23([B)Ljava/lang/Void;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 500
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->parseSimpleResult([B)I

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 502
    :cond_8
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;

    const/16 v1, 0xe

    invoke-direct {v0, v1, p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;-><init>(II)V

    throw v0
.end method

.method private static synthetic blacklist lambda$setNickname$12(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    const v0, 0xbf29

    .line 379
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    .line 381
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->padTrailingFs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToBytes(Ljava/lang/String;)[B

    move-result-object p0

    const/16 v1, 0x5a

    .line 380
    invoke-virtual {v0, v1, p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBytes(I[B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p0

    const/16 v0, 0x90

    .line 382
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsString(ILjava/lang/String;)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p0

    .line 383
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->build()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object p0

    .line 379
    invoke-virtual {p2, p0}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic blacklist lambda$setNickname$13([B)Ljava/lang/Void;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 386
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->parseSimpleResult([B)I

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 388
    :cond_8
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;-><init>(II)V

    throw v0
.end method

.method private static synthetic blacklist lambda$switchToProfile$8(Ljava/lang/String;ZLcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 305
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->padTrailingFs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToBytes(Ljava/lang/String;)[B

    move-result-object p0

    const v0, 0xbf31

    .line 306
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    const/16 v1, 0xa0

    .line 307
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v1

    const/16 v2, 0x5a

    .line 308
    invoke-virtual {v1, v2, p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBytes(I[B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p0

    .line 307
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChild(Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p0

    const/16 v0, 0x81

    .line 309
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBoolean(IZ)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p0

    .line 310
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->build()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object p0

    .line 306
    invoke-virtual {p2, p0}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic blacklist lambda$switchToProfile$9(Ljava/lang/String;[B)Ljava/lang/Void;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 315
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->parseSimpleResult([B)I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2b

    const/4 v1, 0x2

    if-ne p1, v1, :cond_23

    .line 320
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Profile is already enabled, iccid: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    invoke-static {p0}, Landroid/telephony/SubscriptionInfo;->givePrintableIccid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 320
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->logd(Ljava/lang/String;)V

    return-object v0

    .line 324
    :cond_23
    new-instance p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;

    const/16 v0, 0xa

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;-><init>(II)V

    throw p0

    :cond_2b
    return-object v0
.end method

.method private static blacklist logd(Ljava/lang/String;)V
    .registers 2

    const-string v0, "EuiccPort"

    .line 1408
    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static blacklist loge(Ljava/lang/String;)V
    .registers 2

    const-string v0, "EuiccPort"

    .line 1395
    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static blacklist loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    const-string v0, "EuiccPort"

    .line 1399
    invoke-static {v0, p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private static blacklist logi(Ljava/lang/String;)V
    .registers 2

    const-string v0, "EuiccPort"

    .line 1403
    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist newRequestProvider(Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduRequestBuilder;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;
    .registers 3

    .line 1106
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda51;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda51;-><init>(Lcom/android/internal/telephony/uicc/euicc/EuiccPort;Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduRequestBuilder;)V

    return-object v0
.end method

.method private static blacklist padTrailingFs(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1388
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_30

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_30

    .line 1389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    sub-int/2addr v1, p0

    new-array p0, v1, [C

    invoke-direct {v2, p0}, Ljava/lang/String;-><init>([C)V

    const/4 p0, 0x0

    const/16 v1, 0x46

    invoke-virtual {v2, p0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_30
    return-object p0
.end method

.method private static blacklist parseResponse([B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 1359
    new-instance v0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;-><init>([B)V

    .line 1360
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->hasNextNode()Z

    move-result p0

    if-eqz p0, :cond_10

    .line 1363
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->nextNode()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    return-object p0

    .line 1361
    :cond_10
    new-instance p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;

    const/4 v0, 0x0

    const-string v1, "Empty response"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method

.method private static blacklist parseResponseAndCheckSimpleError([BI)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;
        }
    .end annotation

    .line 1374
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->parseResponse([B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    const/4 v0, 0x0

    new-array v1, v0, [I

    const/16 v2, 0x81

    .line 1375
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->hasChild(I[I)Z

    move-result v1

    if-nez v1, :cond_10

    return-object p0

    .line 1376
    :cond_10
    new-instance v1, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;

    new-array v0, v0, [I

    invoke-virtual {p0, v2, v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asInteger()I

    move-result p0

    invoke-direct {v1, p1, p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;-><init>(II)V

    throw v1
.end method

.method private static blacklist parseSimpleResult([B)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 1354
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->parseResponse([B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [I

    const/16 v1, 0x80

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asInteger()I

    move-result p0

    return p0
.end method

.method private blacklist sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduExceptionHandler;Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduIntermediateResultHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;",
            "Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduResponseHandler<",
            "TT;>;",
            "Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduExceptionHandler;",
            "Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduIntermediateResultHandler;",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "TT;>;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 1193
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->mApduSender:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;

    new-instance v7, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p5

    move-object v4, p2

    move-object v5, p4

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$1;-><init>(Lcom/android/internal/telephony/uicc/euicc/EuiccPort;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduIntermediateResultHandler;Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduExceptionHandler;)V

    invoke-virtual {v0, p1, v7, p6}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->send(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSenderResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method private blacklist sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduIntermediateResultHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;",
            "Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduResponseHandler<",
            "TT;>;",
            "Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduIntermediateResultHandler;",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "TT;>;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 1159
    new-instance v3, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda50;

    invoke-direct {v3, p4}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda50;-><init>(Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduExceptionHandler;Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduIntermediateResultHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method private blacklist sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;",
            "Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduResponseHandler<",
            "TT;>;",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "TT;>;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 1150
    new-instance v3, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda52;

    invoke-direct {v3, p3}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda52;-><init>(Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;)V

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduExceptionHandler;Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduIntermediateResultHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method private blacklist sendApduWithSimResetErrorWorkaround(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;",
            "Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduResponseHandler<",
            "Ljava/lang/Void;",
            ">;",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "Ljava/lang/Void;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 1176
    new-instance v3, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda49;

    invoke-direct {v3, p3}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda49;-><init>(Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;)V

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduExceptionHandler;Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduIntermediateResultHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method private static blacklist stripTrailingFs([B)Ljava/lang/String;
    .registers 3

    .line 1383
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bchToString([BII)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IccUtils;->stripTrailingFs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public blacklist addDeviceCapability(Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;Ljava/lang/String;)V
    .registers 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    const-string p0, ","

    .line 975
    invoke-virtual {p2, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 976
    array-length p2, p0

    const/4 v0, 0x2

    if-eq p2, v0, :cond_23

    .line 977
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid device capability item: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->loge(Ljava/lang/String;)V

    return-void

    :cond_23
    const/4 p2, 0x0

    .line 981
    aget-object v1, p0, p2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 984
    :try_start_2b
    aget-object p0, p0, v2

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_39
    .catch Ljava/lang/NumberFormatException; {:try_start_2b .. :try_end_39} :catch_12a

    const/4 v3, 0x3

    new-array v4, v3, [B

    .line 990
    invoke-virtual {p0}, Ljava/lang/Integer;->byteValue()B

    move-result p0

    aput-byte p0, v4, p2

    aput-byte p2, v4, v2

    aput-byte p2, v4, v0

    .line 991
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const/4 p0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_132

    :goto_51
    move v0, p0

    goto/16 :goto_d0

    :sswitch_54
    const-string p2, "utran"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5d

    goto :goto_51

    :cond_5d
    const/16 v0, 0xa

    goto/16 :goto_d0

    :sswitch_61
    const-string p2, "nrepc"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6a

    goto :goto_51

    :cond_6a
    const/16 v0, 0x9

    goto/16 :goto_d0

    :sswitch_6e
    const-string p2, "nr5gc"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_77

    goto :goto_51

    :cond_77
    const/16 v0, 0x8

    goto/16 :goto_d0

    :sswitch_7b
    const-string p2, "ehrpd"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_84

    goto :goto_51

    :cond_84
    const/4 v0, 0x7

    goto :goto_d0

    :sswitch_86
    const-string p2, "hrpd"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8f

    goto :goto_51

    :cond_8f
    const/4 v0, 0x6

    goto :goto_d0

    :sswitch_91
    const-string p2, "nfc"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9a

    goto :goto_51

    :cond_9a
    const/4 v0, 0x5

    goto :goto_d0

    :sswitch_9c
    const-string p2, "gsm"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a5

    goto :goto_51

    :cond_a5
    const/4 v0, 0x4

    goto :goto_d0

    :sswitch_a7
    const-string p2, "crl"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b0

    goto :goto_51

    :cond_b0
    move v0, v3

    goto :goto_d0

    :sswitch_b2
    const-string p2, "eutran5gc"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_d0

    goto :goto_51

    :sswitch_bb
    const-string p2, "eutran"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_c4

    goto :goto_51

    :cond_c4
    move v0, v2

    goto :goto_d0

    :sswitch_c6
    const-string v0, "cdma1x"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_cf

    goto :goto_51

    :cond_cf
    move v0, p2

    :cond_d0
    :goto_d0
    packed-switch v0, :pswitch_data_160

    .line 1026
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Invalid device capability name: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->loge(Ljava/lang/String;)V

    goto :goto_129

    :pswitch_e8
    const/16 p0, 0x81

    .line 996
    invoke-virtual {p1, p0, v4}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBytes(I[B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    goto :goto_129

    :pswitch_ee
    const/16 p0, 0x88

    .line 1017
    invoke-virtual {p1, p0, v4}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBytes(I[B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    goto :goto_129

    :pswitch_f4
    const/16 p0, 0x89

    .line 1020
    invoke-virtual {p1, p0, v4}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBytes(I[B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    goto :goto_129

    :pswitch_fa
    const/16 p0, 0x84

    .line 1005
    invoke-virtual {p1, p0, v4}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBytes(I[B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    goto :goto_129

    :pswitch_100
    const/16 p0, 0x83

    .line 1002
    invoke-virtual {p1, p0, v4}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBytes(I[B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    goto :goto_129

    :pswitch_106
    const/16 p0, 0x86

    .line 1011
    invoke-virtual {p1, p0, v4}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBytes(I[B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    goto :goto_129

    :pswitch_10c
    const/16 p0, 0x80

    .line 993
    invoke-virtual {p1, p0, v4}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBytes(I[B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    goto :goto_129

    :pswitch_112
    const/16 p0, 0x87

    .line 1014
    invoke-virtual {p1, p0, v4}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBytes(I[B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    goto :goto_129

    :pswitch_118
    const/16 p0, 0x8a

    .line 1023
    invoke-virtual {p1, p0, v4}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBytes(I[B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    goto :goto_129

    :pswitch_11e
    const/16 p0, 0x85

    .line 1008
    invoke-virtual {p1, p0, v4}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBytes(I[B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    goto :goto_129

    :pswitch_124
    const/16 p0, 0x82

    .line 999
    invoke-virtual {p1, p0, v4}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBytes(I[B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    :goto_129
    return-void

    :catch_12a
    move-exception p0

    const-string p1, "Invalid device capability version number."

    .line 986
    invoke-static {p1, p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    nop

    :sswitch_data_132
    .sparse-switch
        -0x515c0d24 -> :sswitch_c6
        -0x4cff5825 -> :sswitch_bb
        -0x46b1a5ea -> :sswitch_b2
        0x181dd -> :sswitch_a7
        0x19101 -> :sswitch_9c
        0x1a9ab -> :sswitch_91
        0x31007e -> :sswitch_86
        0x5c04663 -> :sswitch_7b
        0x642bf8d -> :sswitch_6e
        0x64374d4 -> :sswitch_61
        0x6a73120 -> :sswitch_54
    .end sparse-switch

    :pswitch_data_160
    .packed-switch 0x0
        :pswitch_124
        :pswitch_11e
        :pswitch_118
        :pswitch_112
        :pswitch_10c
        :pswitch_106
        :pswitch_100
        :pswitch_fa
        :pswitch_f4
        :pswitch_ee
        :pswitch_e8
    .end packed-switch
.end method

.method public blacklist authenticateServer(Ljava/lang/String;[B[B[B[BLcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B[B[B[B",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "[B>;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 612
    new-instance v7, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda6;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda6;-><init>(Lcom/android/internal/telephony/uicc/euicc/EuiccPort;Ljava/lang/String;[B[B[B[B)V

    .line 613
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->newRequestProvider(Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduRequestBuilder;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;

    move-result-object p1

    new-instance p2, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda7;

    invoke-direct {p2}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda7;-><init>()V

    .line 612
    invoke-direct {p0, p1, p2, p6, p7}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist cancelSession([BILcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "[B>;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 827
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda10;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda10;-><init>([BI)V

    .line 828
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->newRequestProvider(Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduRequestBuilder;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;

    move-result-object p1

    new-instance p2, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda11;

    invoke-direct {p2}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda11;-><init>()V

    .line 827
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist deleteProfile(Ljava/lang/String;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "Ljava/lang/Void;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 404
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda34;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda34;-><init>(Ljava/lang/String;)V

    .line 405
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->newRequestProvider(Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduRequestBuilder;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;

    move-result-object p1

    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda35;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda35;-><init>()V

    .line 404
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist disableProfile(Ljava/lang/String;ZLcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "Ljava/lang/Void;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 264
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda28;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda28;-><init>(Ljava/lang/String;Z)V

    .line 265
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->newRequestProvider(Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduRequestBuilder;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda29;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda29;-><init>(Ljava/lang/String;)V

    .line 264
    invoke-direct {p0, p2, v0, p3, p4}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->sendApduWithSimResetErrorWorkaround(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    .line 1414
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccPort;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    const-string p1, "EuiccPort:"

    .line 1415
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1416
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mEid="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->mEid:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1417
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mIsSupportsMultipleEnabledProfiles="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->mIsSupportsMultipleEnabledProfiles:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist getAllProfiles(Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "[",
            "Landroid/service/euicc/EuiccProfileInfo;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 184
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->mIsSupportsMultipleEnabledProfiles:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/internal/telephony/uicc/euicc/Tags;->EUICC_PROFILE_MEP_TAGS:[B

    goto :goto_9

    .line 185
    :cond_7
    sget-object v0, Lcom/android/internal/telephony/uicc/euicc/Tags;->EUICC_PROFILE_TAGS:[B

    .line 186
    :goto_9
    new-instance v1, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda8;

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda8;-><init>([B)V

    .line 187
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->newRequestProvider(Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduRequestBuilder;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda9;-><init>()V

    .line 186
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist getDefaultSmdpAddress(Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 457
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda24;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda24;-><init>()V

    .line 458
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->newRequestProvider(Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduRequestBuilder;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda25;

    invoke-direct {v1}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda25;-><init>()V

    .line 457
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method protected blacklist getDeviceId()[B
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 1033
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccPort;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-nez v0, :cond_f

    const/16 p0, 0x8

    new-array p0, p0, [B

    return-object p0

    .line 1037
    :cond_f
    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->mSpecVersion:Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;

    invoke-static {v0, p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->getDeviceId(Ljava/lang/String;Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;)[B

    move-result-object p0

    return-object p0
.end method

.method public blacklist getEid()Ljava/lang/String;
    .registers 1

    .line 336
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->mEid:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getEid(Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 347
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->mEid:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 348
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->mEid:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultHelper;->returnResult(Ljava/lang/Object;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void

    .line 351
    :cond_a
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda22;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda22;-><init>()V

    .line 352
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->newRequestProvider(Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduRequestBuilder;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda23;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda23;-><init>(Lcom/android/internal/telephony/uicc/euicc/EuiccPort;)V

    .line 351
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist getEuiccChallenge(Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "[B>;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 555
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda26;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda26;-><init>()V

    .line 556
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->newRequestProvider(Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduRequestBuilder;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda27;

    invoke-direct {v1}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda27;-><init>()V

    .line 555
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist getEuiccInfo1(Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "[B>;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 573
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda18;-><init>()V

    .line 574
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->newRequestProvider(Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduRequestBuilder;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda19;

    invoke-direct {v1}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda19;-><init>()V

    .line 573
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist getEuiccInfo2(Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "[B>;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 590
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda39;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda39;-><init>()V

    .line 591
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->newRequestProvider(Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduRequestBuilder;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda40;

    invoke-direct {v1}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda40;-><init>()V

    .line 590
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public final blacklist getProfile(Ljava/lang/String;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "Landroid/service/euicc/EuiccProfileInfo;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 226
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->mIsSupportsMultipleEnabledProfiles:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/internal/telephony/uicc/euicc/Tags;->EUICC_PROFILE_MEP_TAGS:[B

    goto :goto_9

    .line 227
    :cond_7
    sget-object v0, Lcom/android/internal/telephony/uicc/euicc/Tags;->EUICC_PROFILE_TAGS:[B

    .line 228
    :goto_9
    new-instance v1, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda20;

    invoke-direct {v1, p1, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda20;-><init>(Ljava/lang/String;[B)V

    .line 229
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->newRequestProvider(Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduRequestBuilder;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;

    move-result-object p1

    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda21;-><init>()V

    .line 228
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method protected blacklist getResources()Landroid/content/res/Resources;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 1102
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getRulesAuthTable(Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "Landroid/telephony/euicc/EuiccRulesAuthTable;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 519
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda32;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda32;-><init>()V

    .line 520
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->newRequestProvider(Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduRequestBuilder;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda33;

    invoke-direct {v1}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda33;-><init>()V

    .line 519
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist getSmdsAddress(Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 474
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda2;-><init>()V

    .line 475
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->newRequestProvider(Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduRequestBuilder;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda3;-><init>()V

    .line 474
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist getSpecVersion(Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->mSpecVersion:Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;

    if-eqz v0, :cond_8

    .line 149
    invoke-static {v0, p1, p2}, Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultHelper;->returnResult(Ljava/lang/Object;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void

    .line 153
    :cond_8
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda16;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->newRequestProvider(Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduRequestBuilder;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda17;-><init>(Lcom/android/internal/telephony/uicc/euicc/EuiccPort;)V

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist listNotifications(ILcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "[",
            "Landroid/telephony/euicc/EuiccNotification;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 849
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda43;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda43;-><init>(I)V

    .line 850
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->newRequestProvider(Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduRequestBuilder;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;

    move-result-object p1

    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda44;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda44;-><init>()V

    .line 849
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist loadBoundProfilePackage([BLcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "[B>;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 706
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda36;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda36;-><init>(Lcom/android/internal/telephony/uicc/euicc/EuiccPort;[B)V

    .line 707
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->newRequestProvider(Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduRequestBuilder;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;

    move-result-object v2

    new-instance v3, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda37;

    invoke-direct {v3}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda37;-><init>()V

    new-instance v4, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda38;

    invoke-direct {v4}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda38;-><init>()V

    move-object v1, p0

    move-object v5, p2

    move-object v6, p3

    .line 706
    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduIntermediateResultHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist prepareDownload([B[B[B[BLcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B[B[B",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "[B>;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 671
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda41;

    invoke-direct {v0, p2, p3, p1, p4}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda41;-><init>([B[B[B[B)V

    .line 672
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->newRequestProvider(Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduRequestBuilder;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;

    move-result-object p1

    new-instance p2, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda42;

    invoke-direct {p2}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda42;-><init>()V

    .line 671
    invoke-direct {p0, p1, p2, p5, p6}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist removeNotificationFromList(ILcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "Ljava/lang/Void;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 947
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda45;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda45;-><init>(I)V

    .line 948
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->newRequestProvider(Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduRequestBuilder;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;

    move-result-object p1

    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda46;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda46;-><init>()V

    .line 947
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist resetMemory(ILcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "Ljava/lang/Void;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 433
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda30;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda30;-><init>(I)V

    .line 434
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->newRequestProvider(Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduRequestBuilder;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;

    move-result-object p1

    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda31;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda31;-><init>()V

    .line 433
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->sendApduWithSimResetErrorWorkaround(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist retrieveNotification(ILcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "Landroid/telephony/euicc/EuiccNotification;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 918
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda47;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda47;-><init>(I)V

    .line 919
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->newRequestProvider(Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduRequestBuilder;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;

    move-result-object p1

    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda48;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda48;-><init>()V

    .line 918
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist retrieveNotificationList(ILcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "[",
            "Landroid/telephony/euicc/EuiccNotification;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 877
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda4;-><init>(I)V

    .line 878
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->newRequestProvider(Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduRequestBuilder;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;

    move-result-object p1

    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda5;-><init>()V

    .line 877
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist setDefaultSmdpAddress(Ljava/lang/String;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "Ljava/lang/Void;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 492
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    .line 493
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->newRequestProvider(Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduRequestBuilder;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;

    move-result-object p1

    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda1;-><init>()V

    .line 492
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist setNickname(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "Ljava/lang/Void;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 377
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda14;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda14;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->newRequestProvider(Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduRequestBuilder;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;

    move-result-object p1

    new-instance p2, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda15;

    invoke-direct {p2}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda15;-><init>()V

    .line 377
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist switchToProfile(Ljava/lang/String;ZLcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "Ljava/lang/Void;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 303
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda12;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda12;-><init>(Ljava/lang/String;Z)V

    .line 304
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->newRequestProvider(Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduRequestBuilder;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda13;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda13;-><init>(Ljava/lang/String;)V

    .line 303
    invoke-direct {p0, p2, v0, p3, p4}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->sendApduWithSimResetErrorWorkaround(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist update(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;Lcom/android/internal/telephony/uicc/UiccCard;)V
    .registers 7

    .line 159
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 160
    :try_start_3
    iget-object v1, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->eid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 161
    iget-object v1, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->eid:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->mEid:Ljava/lang/String;

    .line 163
    :cond_f
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/uicc/UiccPort;->update(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;Lcom/android/internal/telephony/uicc/UiccCard;)V

    .line 164
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public blacklist updateSupportMultipleEnabledProfile(Z)V
    .registers 3

    const-string v0, "updateSupportMultipleEnabledProfile"

    .line 172
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->logd(Ljava/lang/String;)V

    .line 173
    iput-boolean p1, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->mIsSupportsMultipleEnabledProfiles:Z

    return-void
.end method
