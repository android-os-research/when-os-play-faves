.class public Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;
.super Ljava/lang/Object;
.source "SemTwtAiEngineInterfaces.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScpmParameterSet"
.end annotation


# instance fields
.field public abAPCntThd_Tdt:I

.field public abAPContCntThd_Tdt:I

.field public acCca1_Tdt:I

.field public acInterT1_Tdt:J

.field public acInterT2_Tdt:J

.field public congestCoe_Tdt:F

.field public constOverHead_Tdt:J

.field public mBoostFactor1_Tdt:F

.field public mBoostFactor2_Tdt:F

.field public mBoostFactor3_Tdt:F

.field public mCongestionDivider:J

.field public mEpsilonUpdateThreshold:F

.field public mMinSPDuration:I

.field public mOverflowGuardThr:F

.field public mOverflowTdtWeight:F

.field public mOverflowThresholdPercent:F

.field public mStableGuardHiEpsThr:F

.field public mStableGuardLoEpsThr:F

.field public mStableTdtWeight:F

.field public mTdtUpdateMode:I

.field public mgCca1_Tdt:I

.field public mgCcaThd1_Tdt:I

.field public mgCcaThd2_Tdt:I

.field public mgCcaThd3_Tdt:I

.field public mgCntThd_Tdt:I

.field public mgInterT1_Tdt:J

.field public mgInterT2_Tdt:J

.field public mgTxGoodThd1_Tdt:F

.field public mgTxGoodThd2_Tdt:F

.field public mgTxGoodThd3_Tdt:F

.field public overHead_Tdt:J

.field public qoSAnomalyCntThd_Tdt:I

.field public qoSGoodInterTime_Tdt:J

.field public qoSInterTimeMaxTh1_Tdt:J

.field public qoSInterTimeMaxTh2_Tdt:J

.field public resetAbnormalAPTimeThd_Tdt:J

.field public resetQosPatchTimeThd_Tdt:J

.field final synthetic this$0:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

.field public vcCca1_Tdt:I

.field public vcInterT1_Tdt:J

.field public vcInterT2_Tdt:J


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;)V
    .registers 7

    .line 1224
    iput-object p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->this$0:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x5dc

    .line 1175
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->overHead_Tdt:J

    const-wide/16 v0, 0x9c4

    .line 1176
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->constOverHead_Tdt:J

    const p1, 0x3ff33333    # 1.9f

    .line 1177
    iput p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->congestCoe_Tdt:F

    const/4 p1, 0x1

    .line 1178
    iput p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mgCntThd_Tdt:I

    const/16 p1, 0x186

    .line 1179
    iput p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mgCcaThd1_Tdt:I

    const/16 p1, 0x1e0

    .line 1180
    iput p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mgCcaThd2_Tdt:I

    const/16 p1, 0x12c

    .line 1181
    iput p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mgCcaThd3_Tdt:I

    const v0, 0x3f19999a    # 0.6f

    .line 1182
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mgTxGoodThd1_Tdt:F

    const/high16 v0, 0x3f000000    # 0.5f

    .line 1183
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mgTxGoodThd2_Tdt:F

    const v1, 0x3f4ccccd    # 0.8f

    .line 1184
    iput v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mgTxGoodThd3_Tdt:F

    const/high16 v1, 0x40600000    # 3.5f

    .line 1185
    iput v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mBoostFactor1_Tdt:F

    const/high16 v1, 0x40000000    # 2.0f

    .line 1186
    iput v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mBoostFactor2_Tdt:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1187
    iput v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mBoostFactor3_Tdt:F

    const-wide/16 v1, 0x1770

    .line 1188
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->resetQosPatchTimeThd_Tdt:J

    const-wide/16 v1, 0x3a98

    .line 1189
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->resetAbnormalAPTimeThd_Tdt:J

    const-wide/32 v1, 0x55d4a80

    .line 1191
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->qoSInterTimeMaxTh1_Tdt:J

    const-wide/32 v1, 0xb532b80

    .line 1192
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->qoSInterTimeMaxTh2_Tdt:J

    const-wide/32 v3, 0x47868c0

    .line 1193
    iput-wide v3, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->qoSGoodInterTime_Tdt:J

    const/4 v3, 0x3

    .line 1195
    iput v3, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->qoSAnomalyCntThd_Tdt:I

    .line 1196
    iput v3, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->abAPCntThd_Tdt:I

    .line 1197
    iput v3, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->abAPContCntThd_Tdt:I

    .line 1199
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mgInterT1_Tdt:J

    const-wide/32 v1, 0xee6b280

    .line 1200
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mgInterT2_Tdt:J

    .line 1201
    iput p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mgCca1_Tdt:I

    const-wide/32 v1, 0x1d34ce80

    .line 1203
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->acInterT1_Tdt:J

    const-wide/32 v1, 0x2160ec00

    .line 1204
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->acInterT2_Tdt:J

    .line 1205
    iput p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->acCca1_Tdt:I

    const-wide/32 v1, 0xf7f4900

    .line 1207
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->vcInterT1_Tdt:J

    const-wide/32 v1, 0x11490c80

    .line 1208
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->vcInterT2_Tdt:J

    .line 1209
    iput p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->vcCca1_Tdt:I

    const p1, 0x3e4ccccd    # 0.2f

    .line 1212
    iput p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mOverflowGuardThr:F

    const p1, 0x3d4ccccd    # 0.05f

    .line 1213
    iput p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mStableGuardLoEpsThr:F

    const v1, 0x3dcccccd    # 0.1f

    .line 1214
    iput v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mStableGuardHiEpsThr:F

    const-wide/32 v1, 0x11170

    .line 1215
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mCongestionDivider:J

    .line 1216
    iput p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mOverflowThresholdPercent:F

    const/high16 p1, 0x42480000    # 50.0f

    .line 1217
    iput p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mEpsilonUpdateThreshold:F

    const/16 p1, 0x400

    .line 1218
    iput p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mMinSPDuration:I

    .line 1220
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mStableTdtWeight:F

    .line 1221
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mOverflowTdtWeight:F

    const/4 p1, 0x0

    .line 1222
    iput p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mTdtUpdateMode:I

    return-void
.end method


# virtual methods
.method public updateParameters()V
    .registers 4

    .line 1230
    iget-object v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->this$0:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->-$$Nest$fgetspDuration(Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;)Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mOverflowGuardThr:F

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->setmOverflowGuardThr(F)V

    .line 1231
    iget-object v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->this$0:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->-$$Nest$fgetspDuration(Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;)Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mStableGuardLoEpsThr:F

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->setmStableGuardLoEpsThr(F)V

    .line 1232
    iget-object v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->this$0:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->-$$Nest$fgetspDuration(Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;)Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mStableGuardHiEpsThr:F

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->setmStableGuardHiEpsThr(F)V

    .line 1233
    iget-object v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->this$0:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->-$$Nest$fgetspDuration(Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;)Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mCongestionDivider:J

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->setmCongestionDivider(J)V

    .line 1234
    iget-object v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->this$0:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->-$$Nest$fgetspDuration(Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;)Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mOverflowThresholdPercent:F

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->setmOverflowThresholdPercent(F)V

    .line 1235
    iget-object v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->this$0:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->-$$Nest$fgetspDuration(Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;)Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mEpsilonUpdateThreshold:F

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->setmEpsilonUpdateThreshold(F)V

    .line 1236
    iget-object v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->this$0:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->-$$Nest$fgetspDuration(Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;)Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mMinSPDuration:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->setmMinSPDuration(I)V

    .line 1238
    iget-object v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->this$0:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->-$$Nest$fgetspDuration(Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;)Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mStableTdtWeight:F

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->setmStableTdtWeight(F)V

    .line 1239
    iget-object v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->this$0:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->-$$Nest$fgetspDuration(Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;)Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mOverflowTdtWeight:F

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->setmOverflowTdtWeight(F)V

    .line 1240
    iget-object v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->this$0:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->-$$Nest$fgetspDuration(Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;)Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;

    move-result-object v0

    iget p0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mTdtUpdateMode:I

    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->setmTdtUpdateMode(I)V

    return-void
.end method
