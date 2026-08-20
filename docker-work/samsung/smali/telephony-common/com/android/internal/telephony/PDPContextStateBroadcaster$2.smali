.class Lcom/android/internal/telephony/PDPContextStateBroadcaster$2;
.super Ljava/util/HashMap;
.source "PDPContextStateBroadcaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/PDPContextStateBroadcaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 4

    .line 233
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 234
    new-instance v0, Ljava/lang/Integer;

    const/16 v1, 0x12d

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    new-instance v0, Ljava/lang/Integer;

    const/16 v2, 0x12e

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "radioTurnedOff"

    invoke-virtual {p0, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    new-instance v0, Ljava/lang/Integer;

    const/16 v2, 0x12f

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "unknownPdpDisconnect"

    invoke-virtual {p0, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    new-instance v0, Ljava/lang/Integer;

    const/16 v2, 0x130

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "unknown data error"

    invoke-virtual {p0, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    new-instance v0, Ljava/lang/Integer;

    const/16 v2, 0x131

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "roamingOn"

    invoke-virtual {p0, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    new-instance v0, Ljava/lang/Integer;

    const/16 v2, 0x132

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "roamingOff"

    invoke-virtual {p0, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    new-instance v0, Ljava/lang/Integer;

    const/16 v2, 0x133

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "dataDisabledInternal"

    invoke-virtual {p0, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    new-instance v0, Ljava/lang/Integer;

    const/16 v2, 0x134

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "dataEnabled"

    invoke-virtual {p0, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    new-instance v0, Ljava/lang/Integer;

    const/16 v2, 0x135

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "dataAttached"

    invoke-virtual {p0, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    new-instance v0, Ljava/lang/Integer;

    const/16 v2, 0x136

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "dataDetached"

    invoke-virtual {p0, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    new-instance v0, Ljava/lang/Integer;

    const/16 v2, 0x137

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "cdmaDataAttached"

    invoke-virtual {p0, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    new-instance v0, Ljava/lang/Integer;

    const/16 v2, 0x138

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "cdmaDataDetached"

    invoke-virtual {p0, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    new-instance v0, Ljava/lang/Integer;

    const/16 v2, 0x139

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "apnChanged"

    invoke-virtual {p0, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    new-instance v0, Ljava/lang/Integer;

    const/16 v2, 0x13a

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "apnSwitched"

    invoke-virtual {p0, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    new-instance v0, Ljava/lang/Integer;

    const/16 v2, 0x13b

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "apnFailed"

    invoke-virtual {p0, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    new-instance v0, Ljava/lang/Integer;

    const/16 v2, 0x13c

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "restoreDefaultApn"

    invoke-virtual {p0, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    new-instance v0, Ljava/lang/Integer;

    const/16 v2, 0x13d

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "pdpReset"

    invoke-virtual {p0, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    new-instance v0, Ljava/lang/Integer;

    const/16 v2, 0x13e

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "2GVoiceCallEnded"

    invoke-virtual {p0, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    new-instance v0, Ljava/lang/Integer;

    const/16 v2, 0x13f

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "2GVoiceCallStarted"

    invoke-virtual {p0, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    new-instance v0, Ljava/lang/Integer;

    const/16 v2, 0x140

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "psRestrictEnabled"

    invoke-virtual {p0, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    new-instance v0, Ljava/lang/Integer;

    const/16 v2, 0x141

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "psRestrictDisabled"

    invoke-virtual {p0, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    new-instance v0, Ljava/lang/Integer;

    const/16 v2, 0x142

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "simLoaded"

    invoke-virtual {p0, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    new-instance v0, Ljava/lang/Integer;

    const/16 v2, 0x143

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "apnTypeDisabled"

    invoke-virtual {p0, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    new-instance v0, Ljava/lang/Integer;

    const/16 v2, 0x144

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "apnTypeEnabled"

    invoke-virtual {p0, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    new-instance v0, Ljava/lang/Integer;

    const/16 v2, 0x145

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "masterDataDisabled"

    invoke-virtual {p0, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    new-instance v0, Ljava/lang/Integer;

    const/16 v2, 0x146

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "masterDataEnabled"

    invoke-virtual {p0, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    new-instance v0, Ljava/lang/Integer;

    const/16 v2, 0x147

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "iccRecordsLoaded"

    invoke-virtual {p0, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    new-instance v0, Ljava/lang/Integer;

    const/16 v2, 0x148

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "cdmaOtaProvisioning"

    invoke-virtual {p0, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    new-instance v0, Ljava/lang/Integer;

    const/16 v2, 0x149

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "defaultDataDisabled"

    invoke-virtual {p0, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    new-instance v0, Ljava/lang/Integer;

    const/16 v2, 0x14a

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "defaultDataEnabled"

    invoke-virtual {p0, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    new-instance v0, Ljava/lang/Integer;

    const/16 v2, 0x14b

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "radioOn"

    invoke-virtual {p0, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    new-instance v0, Ljava/lang/Integer;

    const/16 v2, 0x14c

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "radioOff"

    invoke-virtual {p0, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    new-instance v0, Ljava/lang/Integer;

    const/16 v2, 0x14d

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "radioTechnologyChanged"

    invoke-virtual {p0, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    new-instance v0, Ljava/lang/Integer;

    const/16 v2, 0x14e

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "networkOrModemDisconnect"

    invoke-virtual {p0, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    new-instance v0, Ljava/lang/Integer;

    const/16 v2, 0x14f

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "dataNetworkAttached"

    invoke-virtual {p0, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    new-instance v0, Ljava/lang/Integer;

    const/16 v2, 0x150

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "dataNetworkDetached"

    invoke-virtual {p0, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    new-instance v0, Ljava/lang/Integer;

    const/16 v2, 0x151

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "dataProfileDbChanged"

    invoke-virtual {p0, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    new-instance v0, Ljava/lang/Integer;

    const/16 v2, 0x152

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "cdmaSubscriptionSourceChanged"

    invoke-virtual {p0, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    new-instance v0, Ljava/lang/Integer;

    const/16 v2, 0x153

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "tetheredModeChanged"

    invoke-virtual {p0, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    new-instance v0, Ljava/lang/Integer;

    const/16 v2, 0x154

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "dataConnectionPropertyChanged"

    invoke-virtual {p0, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "nwTypeChanged"

    invoke-virtual {p0, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "dependencyMet"

    invoke-virtual {p0, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "dependencyUnmet"

    invoke-virtual {p0, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    const-string v1, "linkPropertiesChanged"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
