.class public Lcom/android/server/alarm/AppSyncInfo$PackageList;
.super Ljava/lang/Object;
.source "AppSyncInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/alarm/AppSyncInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PackageList"
.end annotation


# instance fields
.field public mPackageSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mRegExpList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 585
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 587
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/alarm/AppSyncInfo$PackageList;->mPackageSet:Ljava/util/HashSet;

    .line 589
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/alarm/AppSyncInfo$PackageList;->mRegExpList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    const-string v0, "*"

    .line 595
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 596
    iget-object v0, p0, Lcom/android/server/alarm/AppSyncInfo$PackageList;->mRegExpList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 597
    iget-object p0, p0, Lcom/android/server/alarm/AppSyncInfo$PackageList;->mRegExpList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    .line 600
    :cond_1d
    iget-object v0, p0, Lcom/android/server/alarm/AppSyncInfo$PackageList;->mPackageSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 601
    iget-object p0, p0, Lcom/android/server/alarm/AppSyncInfo$PackageList;->mPackageSet:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2e
    :goto_2e
    return-void
.end method

.method public clear()V
    .registers 2

    .line 637
    iget-object v0, p0, Lcom/android/server/alarm/AppSyncInfo$PackageList;->mPackageSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 638
    iget-object p0, p0, Lcom/android/server/alarm/AppSyncInfo$PackageList;->mRegExpList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/String;)Z
    .registers 4

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return p0

    .line 624
    :cond_4
    iget-object v0, p0, Lcom/android/server/alarm/AppSyncInfo$PackageList;->mPackageSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 626
    iget-object p0, p0, Lcom/android/server/alarm/AppSyncInfo$PackageList;->mRegExpList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 627
    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v0, 0x1

    :cond_25
    return v0
.end method

.method public loadAppSync3PlusBlockList()V
    .registers 6

    const-string v0, ".*reminder.*"

    .line 674
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string v0, ".*alert.*"

    .line 675
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.sec.screencheck"

    .line 676
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.sec.dsm.system"

    .line 677
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.samsung.android.fmm"

    .line 678
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.samsung.ssd.wolfserver"

    .line 679
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "ch.bitspin.timely"

    .line 680
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.nhn.android.nmap"

    .line 681
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.qihoo.security"

    .line 682
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string v0, ".*vodafone.*"

    .line 683
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.blackberry.enterprise.bscp.*"

    .line 684
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.google.android.ims"

    .line 685
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.google.android.apps.messaging"

    .line 686
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string v0, ".*vzw.*"

    .line 689
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string v0, ".*verizon.*"

    .line 690
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    .line 691
    sget-boolean v0, Lcom/android/server/alarm/AppSyncInfo$Sales;->VZW:Z

    const-string v1, "com.cequint.ecid"

    const-string v2, "com.LogiaGroup.LogiaDeck"

    if-eqz v0, :cond_bd

    const-string v0, ".*amazon.*"

    .line 692
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.audible.application"

    .line 693
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.imdb.mobile"

    .line 694
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.amazon.fv"

    .line 695
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.gotv.nflgamecenter.us.lite"

    .line 696
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.slacker.radio"

    .line 697
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.telecomsys.directedsms.android.SCG"

    .line 698
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    .line 699
    invoke-virtual {p0, v2}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.vznavigator.Generic"

    .line 700
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    .line 701
    invoke-virtual {p0, v1}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.vcast.mediamanager"

    .line 702
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.sec.android.app.cmas"

    .line 703
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.samsung.spg"

    .line 704
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.sec.android.app.setupwizard"

    .line 705
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.samsung.vvm"

    .line 706
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.samsung.carrier.logcollector"

    .line 707
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.samsung.sdm"

    .line 708
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.samsung.syncmlservice"

    .line 709
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.samsung.syncmlphonedataservice"

    .line 710
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.samsung.sdm.sdmviewer"

    .line 711
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.samsung.PAYGPrePayDetection"

    .line 712
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.fusionone.android.sync.vzbuaclient"

    .line 713
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    :cond_bd
    const-string v0, ".*att.*"

    .line 717
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string v0, ".*mizmowireless.*"

    .line 718
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    .line 719
    sget-boolean v0, Lcom/android/server/alarm/AppSyncInfo$Sales;->ATT:Z

    if-eqz v0, :cond_d5

    const-string v0, "com.welldoc.diabetesmanager"

    .line 720
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "deezer.android.app"

    .line 721
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    :cond_d5
    const-string v0, ".*sprint.*"

    .line 725
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    .line 726
    sget-boolean v0, Lcom/android/server/alarm/AppSyncInfo$Sales;->SPR:Z

    const-string v3, "com.lookout"

    const-string v4, "com.amazon.mShop.android"

    if-eqz v0, :cond_189

    const-string v0, "com.airg"

    .line 727
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.amazon.mShop"

    .line 728
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    .line 729
    invoke-virtual {p0, v4}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.amazon.avod.thirdpartyclient"

    .line 730
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.amazon.mp3"

    .line 731
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.amazon.clouddrive.photos"

    .line 732
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.boostmobile.boosttv"

    .line 733
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.coremobility.app.vnotes"

    .line 734
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.ebay.mobile"

    .line 735
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.familyandco.framilywall"

    .line 736
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.handmark.expressweather"

    .line 737
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.itsoninc.android.itsonclient"

    .line 738
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.itsoninc.android.itsonservice"

    .line 739
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.itsoninc.android.uid"

    .line 740
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.kineto.smartwifi"

    .line 741
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.livewiremobile.musicstore.boost"

    .line 742
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.locationlabs.sparkle.yellow.pre"

    .line 743
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    .line 744
    invoke-virtual {p0, v3}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.nascar.nascarmobile"

    .line 745
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.nbadigital.gametimelite"

    .line 746
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.nextradioapp.nextradio"

    .line 747
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.oem.smartwifisupport"

    .line 748
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.pinsight.v1"

    .line 749
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.smithmicro.EDM"

    .line 750
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.smithmicro.mnd"

    .line 751
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.soleo.numbersearch"

    .line 752
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.spotify.music"

    .line 753
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.telenav.app.android.scout_us"

    .line 754
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.ubercab"

    .line 755
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.wipit.android.boostwallet"

    .line 756
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string/jumbo v0, "msgplus.jibe.sca"

    .line 757
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.privacystar.android.spg"

    .line 758
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.playphone.gamestore"

    .line 759
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.livewiremobile.musicstore.vmu"

    .line 760
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    :cond_189
    const-string v0, ".*tmobile.*"

    .line 764
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    .line 765
    sget-boolean v0, Lcom/android/server/alarm/AppSyncInfo$Sales;->TMO:Z

    if-eqz v0, :cond_19d

    .line 766
    invoke-virtual {p0, v4}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    .line 767
    invoke-virtual {p0, v3}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.customermobile.preload"

    .line 768
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    :cond_19d
    const-string v0, ".*metro.*"

    .line 772
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    .line 773
    sget-boolean v0, Lcom/android/server/alarm/AppSyncInfo$Sales;->MPCS:Z

    if-eqz v0, :cond_1b8

    const-string v0, "com.tmobile.pr.adapt"

    .line 774
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    .line 775
    invoke-virtual {p0, v3}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.mobileposse.client"

    .line 776
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.sec.tetheringprovision"

    .line 777
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    :cond_1b8
    const-string v0, ".*tracfone.*"

    .line 781
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string v0, ".*uscc.*"

    .line 784
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    .line 785
    sget-boolean v0, Lcom/android/server/alarm/AppSyncInfo$Sales;->USCC:Z

    if-eqz v0, :cond_1de

    .line 786
    invoke-virtual {p0, v1}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.synchronoss.sm"

    .line 787
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    .line 788
    invoke-virtual {p0, v4}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    .line 789
    invoke-virtual {p0, v2}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.zed.TrdWapLauncher"

    .line 790
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.amazon.windowshop"

    .line 791
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    .line 795
    :cond_1de
    sget-boolean v0, Lcom/android/server/alarm/AppSyncInfo$Sales;->JAPAN:Z

    if-eqz v0, :cond_22f

    const-string v0, "com.nttdocomo.*"

    .line 796
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string/jumbo v0, "jp.co.nttdocomo.*"

    .line 797
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.ipg.gguide.*"

    .line 798
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.rsupport.rs.activity.ntt"

    .line 799
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.mcafee.vsm_android_dcm"

    .line 800
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.mcafee.safecall.docomo"

    .line 801
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.mcafee.android.scanservice"

    .line 802
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.showcasegig.devlawson"

    .line 803
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string/jumbo v0, "jp.id_credit_sp.android"

    .line 804
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string/jumbo v0, "jp.dmapnavi.navi02"

    .line 805
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string/jumbo v0, "jp.co.mcdonalds.android"

    .line 806
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string/jumbo v0, "jp.co.lawson.activity"

    .line 807
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string/jumbo v0, "jp.co.omronsoft.android.decoemojimanager_docomo"

    .line 808
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string/jumbo v0, "org.simalliance.openmobileapi.service"

    .line 809
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    :cond_22f
    return-void
.end method

.method public loadAppSyncBlockList()V
    .registers 2

    const-string v0, ".*alarm.*"

    .line 642
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string v0, ".*clock.*"

    .line 643
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.android.email"

    .line 644
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.samsung.android.email.sync"

    .line 645
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.sec\\..*ims.*"

    .line 647
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.sec.epdg"

    .line 648
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.samsung\\..*ims.*"

    .line 649
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.samsung.android.themecenter"

    .line 650
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.iloen.melon"

    .line 651
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.iloen.melon.tablet"

    .line 652
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string v0, ".*knox.*"

    .line 653
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "android"

    .line 654
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string v0, ".*email.ui"

    .line 655
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string v0, ".*shealth.*"

    .line 656
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    .line 658
    sget-boolean v0, Lcom/android/server/alarm/AppSyncInfo$Sales;->JAPAN:Z

    if-eqz v0, :cond_54

    const-string v0, "com.android.incallui"

    .line 659
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.android.services.telephony.common"

    .line 660
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    :cond_54
    return-void
.end method

.method public loadChnAllowlist()V
    .registers 2

    const-string v0, "com.tencent.mobileqq"

    .line 665
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.sohu.inputmethod.sogou"

    .line 666
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.eg.android.AlipayGphone"

    .line 667
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.alibaba.android.rimet"

    .line 668
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.baidu.map.location"

    .line 669
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string v0, "com.sec.clocationservice"

    .line 670
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 610
    iget-object v1, p0, Lcom/android/server/alarm/AppSyncInfo$PackageList;->mPackageSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 611
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, ", "

    if-eqz v2, :cond_2c

    .line 612
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 614
    :cond_2c
    iget-object p0, p0, Lcom/android/server/alarm/AppSyncInfo$PackageList;->mRegExpList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_32
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_51

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 615
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_32

    .line 617
    :cond_51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
