import {
	Page,
	Text,
	View,
	Document,
	StyleSheet,
	PDFDownloadLink,
	PDFViewer,
	Image,
	Font,
} from '@react-pdf/renderer';
import type { Education, JobExperience, TechnicalSkills } from 'types';
import Hermann from '../../assets/images/hermann.png';

Font.register({
	family: 'Oswald',
	src: 'https://fonts.gstatic.com/s/oswald/v13/Y_TKV6o8WovbUd3m_X9aAA.ttf',
});

const styles = StyleSheet.create({
	page: {
		flexDirection: 'row',
		display: 'flex',
		fontSize: 10,
		fontFamily: 'Oswald',
	},
	image: {
		marginTop: 20,
		width: 100,
		height: 100,
		borderRadius: '50%',
	},
	section: {
		flexDirection: 'column',
		display: 'flex',
		padding: 10,
		flexGrow: 1,
	},
	header: {
		fontSize: 14,
		fontWeight: 'bold',
	},
	sectionOne: {
		backgroundColor: '#2f4352',
		paddingLeft: 40,
		color: 'white',
		gap: 15,
		width: '30%',
	},
	sectionTwo: {
		backgroundColor: 'white',
		color: '#4b5563',
		width: '50%',
	},
	textSection: {
		display: 'flex',
		flexDirection: 'column',
	},
	infoSection: {
		display: 'flex',
		gap: 10,
	},
	name: {
		fontSize: 30,
		paddingTop: 25,
	},
});

export type ResumeProps = {
	educations: Education[];
	technicalSkills: Array<TechnicalSkills>;
	jobExperiences: Array<JobExperience>;
};

function Resume({ educations, technicalSkills, jobExperiences }: ResumeProps) {
	return (
		<Document>
			<Page size="A4" style={styles.page}>
				<View style={{ ...styles.section, ...styles.sectionOne }}>
					<Image style={styles.image} src={Hermann.src} />
					<View style={styles.infoSection}>
						<Text style={styles.header}>Contact</Text>
						<View style={{ borderBottom: 1, borderColor: 'white' }} />
						<View style={styles.textSection}>
							<Text style={{ fontWeight: 'bold' }}>Phone</Text>
							<Text>+4748060943</Text>
						</View>
						<View style={styles.textSection}>
							<Text style={{ fontWeight: 'bold' }}>Email</Text>
							<Text>me@her0elt.com</Text>
						</View>
						<View style={styles.textSection}>
							<Text style={{ fontWeight: 'bold' }}>Address</Text>
							<Text>Gamle kongevei 16 7068 Trondheim</Text>
						</View>
					</View>
					<View style={styles.infoSection}>
						<Text style={styles.header}>Education</Text>
						<View style={{ borderBottom: 1, borderColor: 'white' }} />
						{educations.map((education) => (
							<View style={styles.textSection} key={education.id}>
								<Text>
									{education.from}-{education.to}
								</Text>
								<Text style={{ fontWeight: 'bold' }}>{education.title}</Text>
								<Text style={{ fontWeight: 'bold' }}>{education.school}</Text>
							</View>
						))}
					</View>
					<View style={styles.infoSection}>
						<Text style={styles.header}>Technical Skills</Text>
						<View style={{ borderBottom: 1, borderColor: 'white' }} />
						<View
							style={{
								...styles.textSection,
								...{ flexWrap: 'wrap', height: 150, gap: 20, flexDirection: 'row' },
							}}
						>
							{technicalSkills.map((skill) => (
								<Text key={skill.id}>{skill.skill}</Text>
							))}
						</View>
					</View>
					<View style={styles.infoSection}>
						<Text style={styles.header}>Language</Text>
						<View style={{ borderBottom: 1, borderColor: 'white' }} />
						<View style={styles.textSection}>
							<Text>English</Text>
							<Text>Norwegian</Text>
						</View>
					</View>
				</View>
				<View style={{ ...styles.section, ...styles.sectionTwo }}>
					<Text style={styles.name}>Hermann Elton</Text>
					<View style={{ ...styles.infoSection, ...{ paddingTop: 67 } }}>
						<Text style={styles.header}>Experience</Text>
						<View style={{ borderBottom: 1, borderColor: '' }} />
						{jobExperiences.map((exp) => (
							<View key={exp.id} style={{ ...styles.infoSection, ...{ gap: 5 } }}>
								<Text>
									{exp.from}-{exp.to}
								</Text>
								<Text>{exp.company}</Text>
								<Text>{exp.title}</Text>
								<Text>{exp.description}</Text>
							</View>
						))}
					</View>
				</View>
			</Page>
		</Document>
	);
}

export default function ResumePdf({ educations, technicalSkills, jobExperiences }: ResumeProps) {
	return (
		<>
			<PDFDownloadLink
				document={
					<Resume
						technicalSkills={technicalSkills}
						educations={educations}
						jobExperiences={jobExperiences}
					/>
				}
				fileName="resume-hermann-elton.pdf"
			>
				{({ blob, url, loading, error }) =>
					loading ? (
						<h2 className="mb-10 font-monospace text-xl text-secondary lg:text-3xl">Loading</h2>
					) : (
						<div className="flex justify-center pb-5">
							<button className="border-transparent rounded-xl border-2  bg-primary px-6 py-3 text-center text-secondary ring-secondary ring-offset-2 transition hover:bg-tertiary focus-visible:ring-2">
								Download
							</button>
						</div>
					)
				}
			</PDFDownloadLink>
			<PDFViewer className="hidden h-full w-full lg:block">
				<Resume
					educations={educations}
					technicalSkills={technicalSkills}
					jobExperiences={jobExperiences}
				/>
			</PDFViewer>
		</>
	);
}
