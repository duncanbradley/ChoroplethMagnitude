# Additional Related Work

Work on legends in thematic maps
The role of legends for developing an initial understanding, with fixation on map legends decreasing as exposure to map increased (Hepburn et al. 2021). Demonstrates building up of a cognitive representation of that information.
Edler - Coloured dots in legend corresponding to items at different locations on a map - 
In keeping with left-hemisphere specialised language processing, legends presented on the right are processed more quickly than those on the left. 
Li and Qin - investigated visual search performance in legends, with a focus on formatting. Following Gestalt principles, proximity between icons and corresponding text was the most influential aspect of spacing. 
Gołębiowska - simple task performance was similar across all three legend arrangements (list legend, grouped legend, natural legend), but user preferences depend on legends’ suitability for specific tasks.
Dykes et al illustrate several creative ways of designing map legends, e.g. using information visualisation techniques such as bar chart or treemap, dynamic legends showing only relevant information, illustrating that conventional implemetations are not the only options.  
Choropleth maps outperformed maps with graduated symbols and isoline maps in a range of basic tasks, and were also participnats’ preferred option (Słomska-Przech and Gołębiowska (2021)
There have been various other attemps to design alternative legends (e.g. ogive-based, Cromley and Ye; histogram-based, Kumar; uncertainty-capturing, Rechtless and Brewer). However, all of these have used the entire range of the data. 

Different datasets suit different mapping methods. 

A big focus of legend design has been on data classification. To better display patterns of data, values are classified into groups, and these groups are chosen in order to optimise the display. The divisions between distinct colors are known as ‘breaks’. Enhance the communicative ability of the plot. Create a more ‘balanced’ assignment of colours and values. Many different algorithms have been developed to select appropriate breaks for a given data set. 

In this experiment, values were almost the same but were subtly different. Using a breaking algorithm would have obscured this message. Using an unclassified color scheme is therefore most appropriate. 

It may not have as much complexity as geographical patterns, but even simple observations can benefit from visualisation (e.g., steady rise in global temperature, overall improvements in life expectancy, low numbers of Black senators). This also applies to things that wouldn’t typically be considered a ‘pattern’, such as stagnant wages. We don’t just visualise things because they can’t be summed up in a sentence. We visualise them for memorability, dramatic effect, expressiveness, for low literacy, rhetoric, see also Bertini et al scatterplots. Showing data visually can also assist individuals with poor numeracy, difficulty putting numbers into perspective. 

There was no way to ensure that colours were displayed equally for all participants, due to different viewing conditions. Different lighting conditions, different screens, different settings etc. We did not attempt to make colours comparable, or measure how colors appeared to participants because of the difficultly in doing so. There is no way that display settings could explain our results, each participant was exposed to the same conditions under the same display conditions. Using a within-participants design ensures that we compare particpants’ responses to both conditions. 

Schiewe (2019) observed that assessment of values presented in choropleths are driven by the coverage of darker colors (i.e., the relationship between color and region size). 

Colormaps with more than two hues (e.g. warm-cool, or diverging palettes) were not investigated in the present experiment. This was an exeperimental design choice. Using just one color allows greater control of the stimulus, generating fewer changes between conditions. In the case of a diverging palette, it would move the midpoint. It would also change the presence an entire color, rather than just changing the intensity (luminance) of the color. However, it it could be a case for future work.

Choropleth maps 102-16
CIE LAB 253-255
range 111-12
legend in choropleth map 111-12
pg 200 contains a brief overview of data types for choropleth maps, compared to other map types. 
Dent et al. discuss many considerations for choropleth map design, recommending that ….


* titling
* marginalia
* use of < and >


Dent et al. (2008) discuss requirements for the type of data for choropleth maps. Uses datasets where each data point corresponds to a discrete area, typically defined by administrative boundaries (e.g., national or local government regions). Ratios, proportions and averages are often plotted to aid comparisons. 

One of the main functions is to see geographic patterns. 
The purpose of classifying data into discrete groups is simplification, with an express goal of illustrating the heterogeneity of dissimilar values - convey the distribution of values.
Various classification schemes, different approaches, and indeed the decision whether to classify at all, employed depending on the data and the map’s purpose. Some, such as equal interval, are more concerned with simplicity in legend values. Others, such as natural breaks, are sensitive to the data’s distribution, employing break points that occur within the dataset, ensuring homogenous values are represented as such. Jenks’ algorithm is a formal way of identifying natural breaks.
Unclassed choropleth maps (Tobler, 1973) do not employ discrete groups. Instead, each unique value is represented distinctly, displaying specific values more precisely.

Including non-observed values (as in continuous class ranges), however, increases the chance that viewers make incorrect estimations (Dent et al., 2008), yet this is not the main purpose of visualisation. 

