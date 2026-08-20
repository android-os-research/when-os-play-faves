.class Landroid/media/TtmlTrack;
.super Landroid/media/SubtitleTrack;
.source "TtmlRenderer.java"

# interfaces
.implements Landroid/media/TtmlNodeListener;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "TtmlTrack"


# instance fields
.field private blacklist mCurrentRunID:Ljava/lang/Long;

.field private final blacklist mParser:Landroid/media/TtmlParser;

.field private blacklist mParsingData:Ljava/lang/String;

.field private final blacklist mRenderingWidget:Landroid/media/TtmlRenderingWidget;

.field private blacklist mRootNode:Landroid/media/TtmlNode;

.field private final blacklist mTimeEvents:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTtmlNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/TtmlNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Landroid/media/TtmlRenderingWidget;Landroid/media/MediaFormat;)V
    .registers 4
    .param p1, "renderingWidget"    # Landroid/media/TtmlRenderingWidget;
    .param p2, "format"    # Landroid/media/MediaFormat;

    .line 667
    invoke-direct {p0, p2}, Landroid/media/SubtitleTrack;-><init>(Landroid/media/MediaFormat;)V

    .line 654
    new-instance v0, Landroid/media/TtmlParser;

    invoke-direct {v0, p0}, Landroid/media/TtmlParser;-><init>(Landroid/media/TtmlNodeListener;)V

    iput-object v0, p0, Landroid/media/TtmlTrack;->mParser:Landroid/media/TtmlParser;

    .line 671
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/TtmlTrack;->mTtmlNodes:Ljava/util/ArrayList;

    .line 673
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Landroid/media/TtmlTrack;->mTimeEvents:Ljava/util/TreeSet;

    .line 674
    iput-object p1, p0, Landroid/media/TtmlTrack;->mRenderingWidget:Landroid/media/TtmlRenderingWidget;

    .line 675
    const-string v0, ""

    iput-object v0, p0, Landroid/media/TtmlTrack;->mParsingData:Ljava/lang/String;

    .line 676
    return-void
.end method

.method private blacklist addTimeEvents(Landroid/media/TtmlNode;)V
    .registers 5
    .param p1, "node"    # Landroid/media/TtmlNode;

    .line 793
    iget-object v0, p0, Landroid/media/TtmlTrack;->mTimeEvents:Ljava/util/TreeSet;

    iget-wide v1, p1, Landroid/media/TtmlNode;->mStartTimeMs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 794
    iget-object v0, p0, Landroid/media/TtmlTrack;->mTimeEvents:Ljava/util/TreeSet;

    iget-wide v1, p1, Landroid/media/TtmlNode;->mEndTimeMs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 795
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_17
    iget-object v1, p1, Landroid/media/TtmlNode;->mChildren:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2d

    .line 796
    iget-object v1, p1, Landroid/media/TtmlNode;->mChildren:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/TtmlNode;

    invoke-direct {p0, v1}, Landroid/media/TtmlTrack;->addTimeEvents(Landroid/media/TtmlNode;)V

    .line 795
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 798
    .end local v0    # "i":I
    :cond_2d
    return-void
.end method

.method private blacklist getActiveNodes(JJ)Ljava/util/List;
    .registers 9
    .param p1, "startTimeMs"    # J
    .param p3, "endTimeMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List<",
            "Landroid/media/TtmlNode;",
            ">;"
        }
    .end annotation

    .line 804
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 805
    .local v0, "activeNodes":Ljava/util/List;, "Ljava/util/List<Landroid/media/TtmlNode;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget-object v2, p0, Landroid/media/TtmlTrack;->mTtmlNodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_22

    .line 806
    iget-object v2, p0, Landroid/media/TtmlTrack;->mTtmlNodes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/TtmlNode;

    .line 809
    .local v2, "node":Landroid/media/TtmlNode;
    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/media/TtmlNode;->isActive(JJ)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 811
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 805
    .end local v2    # "node":Landroid/media/TtmlNode;
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 814
    .end local v1    # "i":I
    :cond_22
    return-object v0
.end method


# virtual methods
.method public blacklist getNextResult()Landroid/media/TtmlCue;
    .registers 16

    .line 779
    :goto_0
    iget-object v0, p0, Landroid/media/TtmlTrack;->mTimeEvents:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_42

    .line 780
    iget-object v0, p0, Landroid/media/TtmlTrack;->mTimeEvents:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 781
    .local v10, "start":J
    iget-object v0, p0, Landroid/media/TtmlTrack;->mTimeEvents:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 782
    .local v12, "end":J
    invoke-direct {p0, v10, v11, v12, v13}, Landroid/media/TtmlTrack;->getActiveNodes(JJ)Ljava/util/List;

    move-result-object v0

    .line 783
    .local v0, "activeCues":Ljava/util/List;, "Ljava/util/List<Landroid/media/TtmlNode;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_41

    .line 784
    new-instance v14, Landroid/media/TtmlCue;

    iget-object v1, p0, Landroid/media/TtmlTrack;->mRootNode:Landroid/media/TtmlNode;

    .line 785
    invoke-static {v1, v10, v11, v12, v13}, Landroid/media/TtmlUtils;->extractText(Landroid/media/TtmlNode;JJ)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    iget-object v1, p0, Landroid/media/TtmlTrack;->mCurrentRunID:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move-object v1, v14

    move-wide v2, v10

    move-wide v4, v12

    invoke-direct/range {v1 .. v9}, Landroid/media/TtmlCue;-><init>(JJLjava/lang/String;Ljava/lang/String;J)V

    .line 784
    return-object v14

    .line 787
    .end local v0    # "activeCues":Ljava/util/List;, "Ljava/util/List<Landroid/media/TtmlNode;>;"
    .end local v10    # "start":J
    .end local v12    # "end":J
    :cond_41
    goto :goto_0

    .line 788
    :cond_42
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic blacklist getRenderingWidget()Landroid/media/SubtitleTrack$RenderingWidget;
    .registers 2

    .line 651
    invoke-virtual {p0}, Landroid/media/TtmlTrack;->getRenderingWidget()Landroid/media/TtmlRenderingWidget;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getRenderingWidget()Landroid/media/TtmlRenderingWidget;
    .registers 2

    .line 680
    iget-object v0, p0, Landroid/media/TtmlTrack;->mRenderingWidget:Landroid/media/TtmlRenderingWidget;

    return-object v0
.end method

.method public blacklist onData([BZJ)V
    .registers 11
    .param p1, "data"    # [B
    .param p2, "eos"    # Z
    .param p3, "runID"    # J

    .line 687
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 690
    .local v0, "str":Ljava/lang/String;
    iget-object v1, p0, Landroid/media/TtmlTrack;->mParser:Landroid/media/TtmlParser;

    monitor-enter v1
    :try_end_a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_a} :catch_7e

    .line 691
    :try_start_a
    iget-object v2, p0, Landroid/media/TtmlTrack;->mCurrentRunID:Ljava/lang/Long;

    if-eqz v2, :cond_3c

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, p3, v2

    if-nez v2, :cond_17

    goto :goto_3c

    .line 692
    :cond_17
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Run #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/media/TtmlTrack;->mCurrentRunID:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in progress.  Cannot process run #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "str":Ljava/lang/String;
    .end local p0    # "this":Landroid/media/TtmlTrack;
    .end local p1    # "data":[B
    .end local p2    # "eos":Z
    .end local p3    # "runID":J
    throw v2

    .line 696
    .restart local v0    # "str":Ljava/lang/String;
    .restart local p0    # "this":Landroid/media/TtmlTrack;
    .restart local p1    # "data":[B
    .restart local p2    # "eos":Z
    .restart local p3    # "runID":J
    :cond_3c
    :goto_3c
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Landroid/media/TtmlTrack;->mCurrentRunID:Ljava/lang/Long;

    .line 697
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/media/TtmlTrack;->mParsingData:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/media/TtmlTrack;->mParsingData:Ljava/lang/String;
    :try_end_57
    .catchall {:try_start_a .. :try_end_57} :catchall_7b

    .line 698
    if-eqz p2, :cond_79

    .line 700
    :try_start_59
    iget-object v3, p0, Landroid/media/TtmlTrack;->mParser:Landroid/media/TtmlParser;

    iget-object v4, p0, Landroid/media/TtmlTrack;->mCurrentRunID:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v2, v4, v5}, Landroid/media/TtmlParser;->parse(Ljava/lang/String;J)V
    :try_end_64
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_59 .. :try_end_64} :catch_6a
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_64} :catch_65
    .catchall {:try_start_59 .. :try_end_64} :catchall_7b

    goto :goto_6e

    .line 703
    :catch_65
    move-exception v2

    .line 704
    .local v2, "e":Ljava/io/IOException;
    :try_start_66
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6f

    .line 701
    .end local v2    # "e":Ljava/io/IOException;
    :catch_6a
    move-exception v2

    .line 702
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 705
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_6e
    nop

    .line 706
    :goto_6f
    invoke-virtual {p0, p3, p4}, Landroid/media/TtmlTrack;->finishedRun(J)V

    .line 707
    const-string v2, ""

    iput-object v2, p0, Landroid/media/TtmlTrack;->mParsingData:Ljava/lang/String;

    .line 708
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/TtmlTrack;->mCurrentRunID:Ljava/lang/Long;

    .line 710
    :cond_79
    monitor-exit v1

    .line 713
    .end local v0    # "str":Ljava/lang/String;
    goto :goto_98

    .line 710
    .restart local v0    # "str":Ljava/lang/String;
    :catchall_7b
    move-exception v2

    monitor-exit v1
    :try_end_7d
    .catchall {:try_start_66 .. :try_end_7d} :catchall_7b

    .end local p0    # "this":Landroid/media/TtmlTrack;
    .end local p1    # "data":[B
    .end local p2    # "eos":Z
    .end local p3    # "runID":J
    :try_start_7d
    throw v2
    :try_end_7e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7d .. :try_end_7e} :catch_7e

    .line 711
    .end local v0    # "str":Ljava/lang/String;
    .restart local p0    # "this":Landroid/media/TtmlTrack;
    .restart local p1    # "data":[B
    .restart local p2    # "eos":Z
    .restart local p3    # "runID":J
    :catch_7e
    move-exception v0

    .line 712
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v1, "TtmlTrack"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "subtitle data is not UTF-8 encoded: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_98
    return-void
.end method

.method public blacklist onRootNodeParsed(Landroid/media/TtmlNode;)V
    .registers 4
    .param p1, "node"    # Landroid/media/TtmlNode;

    .line 727
    iput-object p1, p0, Landroid/media/TtmlTrack;->mRootNode:Landroid/media/TtmlNode;

    .line 728
    const/4 v0, 0x0

    .line 729
    .local v0, "cue":Landroid/media/TtmlCue;
    :goto_3
    invoke-virtual {p0}, Landroid/media/TtmlTrack;->getNextResult()Landroid/media/TtmlCue;

    move-result-object v1

    move-object v0, v1

    if-eqz v1, :cond_e

    .line 730
    invoke-virtual {p0, v0}, Landroid/media/TtmlTrack;->addCue(Landroid/media/SubtitleTrack$Cue;)Z

    goto :goto_3

    .line 732
    :cond_e
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/TtmlTrack;->mRootNode:Landroid/media/TtmlNode;

    .line 733
    iget-object v1, p0, Landroid/media/TtmlTrack;->mTtmlNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 734
    iget-object v1, p0, Landroid/media/TtmlTrack;->mTimeEvents:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->clear()V

    .line 735
    return-void
.end method

.method public blacklist onTtmlNodeParsed(Landroid/media/TtmlNode;)V
    .registers 3
    .param p1, "node"    # Landroid/media/TtmlNode;

    .line 720
    iget-object v0, p0, Landroid/media/TtmlTrack;->mTtmlNodes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 722
    invoke-direct {p0, p1}, Landroid/media/TtmlTrack;->addTimeEvents(Landroid/media/TtmlNode;)V

    .line 723
    return-void
.end method

.method public blacklist updateView(Ljava/util/Vector;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Landroid/media/SubtitleTrack$Cue;",
            ">;)V"
        }
    .end annotation

    .line 739
    .local p1, "activeCues":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/media/SubtitleTrack$Cue;>;"
    const-string v0, "TtmlTrack"

    iget-boolean v1, p0, Landroid/media/TtmlTrack;->mVisible:Z

    if-nez v1, :cond_7

    .line 741
    return-void

    .line 744
    :cond_7
    iget-boolean v1, p0, Landroid/media/TtmlTrack;->DEBUG:Z

    if-eqz v1, :cond_3d

    iget-object v1, p0, Landroid/media/TtmlTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    if-eqz v1, :cond_3d

    .line 746
    :try_start_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/TtmlTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 747
    invoke-interface {v2, v3, v4}, Landroid/media/MediaTimeProvider;->getCurrentTimeUs(ZZ)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms the active cues are:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 746
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catch Ljava/lang/IllegalStateException; {:try_start_f .. :try_end_36} :catch_37

    .line 751
    goto :goto_3d

    .line 749
    :catch_37
    move-exception v1

    .line 750
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v2, "at (illegal state) the active cues are:"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :cond_3d
    :goto_3d
    iget-object v0, p0, Landroid/media/TtmlTrack;->mRenderingWidget:Landroid/media/TtmlRenderingWidget;

    invoke-virtual {v0, p1}, Landroid/media/TtmlRenderingWidget;->setActiveCues(Ljava/util/Vector;)V

    .line 755
    return-void
.end method
